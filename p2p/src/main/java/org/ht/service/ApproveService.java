package org.ht.service;

import java.util.List;
import java.util.Map;

import org.ht.pojo.Approveitem;

/**
 * @Name: ApproveService
 * @Description:璁よ瘉椤硅缃殑Service灞�
 * @author jiazhiwei
 * @Date: 2019-2-20 Time: 20:24
 */
public interface ApproveService {
	/**
	 * Description
	 * 
	 * @return List
	 */
	public List<Approveitem> queryApproves(Map<String, Object> map);

	/**
	 * Description
	 * 
	 * @param map
	 */
	public void addApproves(Map<String, Object> map);

	/**
	 * Description
	 * 
	 * @param map
	 */
	public void updateApproves(Map<String, Object> map);
}
