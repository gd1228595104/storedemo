package daoInterface;

public interface CrudDao {
    public boolean Inseart(Object objects);
    public boolean Update(Object...objects);
    public boolean Delete(Object...objects);
    public Object Insearch(Object objects);
}
