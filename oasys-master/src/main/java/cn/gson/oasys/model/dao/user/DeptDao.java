package cn.gson.oasys.model.dao.user;

import java.util.List;

import com.github.pagehelper.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;

import cn.gson.oasys.model.entity.user.Dept;

public interface DeptDao extends PagingAndSortingRepository<Dept, Long>{

	List<Dept> findByDeptId(Long id);

	//通过userid查找
	@Query("select de.deptName from Dept de where de.deptId=:deptid")
	Page<Dept> findByDeptId(@Param("deptid") Long deptid, Pageable pa);


	@Query("select de.deptName from Dept de where de.deptId=:id")
	String findname(@Param("id")Long id);
}
