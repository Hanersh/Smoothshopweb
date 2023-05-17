
package model;

import java.sql.*;
import javax.swing.JOptionPane;


public class AdministradorDao implements Validar {

     // Instanciar la conexión
    Connection conexion;
    PreparedStatement pst;
    ResultSet rs;

    int r = 0;
    
    // Método para validar administrador 
    @Override
    public int validar(Administrador administrador) {
        
        String query = "SELECT * FROM administrador WHERE user = ? AND password = ?";
        
        try {
        conexion = Connexion.getConnection();
        pst = conexion.prepareStatement(query);
        pst.setString(1, administrador.getUser());
        pst.setString(2, administrador.getPassword());
        rs = pst.executeQuery();
        
        while(rs.next()){
            r = r + 1;
            administrador.setUser(rs.getString("user"));
            administrador.setPassword(rs.getString("password"));
        }
        if(r==1){
            return 1;
        }else{
            return 0;
        }
        
        }catch (SQLException e) {
        JOptionPane.showMessageDialog(null, "Error ");
        }
        return 0;
        }
    }
        
  



    /*
    private ClienteDao clienteDao;
    private CategoriaDao categoriaDao;
    private ProductoDao productoDao;
    
    public AdministradorDao() {
        clienteDao = new ClienteDao();
        categoriaDao = new CategoriaDao();
        productoDao = new ProductoDao();
    }
    
    // Métodos para gestionar clientes
    
    public boolean registerClienteQuery(Cliente cliente) {
        return clienteDao.registerClienteQuery(cliente);
    }
    
    public List<Cliente> listClienteQuery() {
        return clienteDao.listClienteQuery("");
    }
    
    public boolean updateClienteQuery(Cliente cliente) {
        return clienteDao.updateClienteQuery(cliente);
    }
    
    public boolean deleteCliente(int id) {
        return clienteDao.deleteClienteQuery(id);
    }
    
    // Métodos para gestionar categorías
    
    public boolean registerCategoriaQuery(Categoria categoria) {
        return categoriaDao.registerCategoriaQuery(categoria);
    }
    
    public List<Categoria> listCategoriaQuery() {
        return categoriaDao.listCategoriaQuery("");
    }
    
    public boolean updateCategoriaQuery(Categoria categoria) {
        return categoriaDao.updateCategoriaQuery(categoria);
    }
    
    public boolean deleteCategoriaQuery(int id) {
        return categoriaDao.deleteCategoriaQuery(id);
    }
    
    // Métodos para gestionar productos
    
    public boolean registerProductoQuery(Producto producto) {
        return productoDao.registerProductoQuery(producto);
    }
    
    public List<Producto> listProductoQuery() {
        return productoDao.listProductoQuery("");
    }
    
    public boolean updateProductoQuery(Producto producto) {
        return productoDao.updateProductoQuery(producto);
    }
    
    public boolean deleteProductoQuery(int id) {
        return productoDao.deleteProductoQuery(id);
    }
    
}
*/