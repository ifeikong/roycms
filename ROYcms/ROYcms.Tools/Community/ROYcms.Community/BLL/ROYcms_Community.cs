using System;
using System.Data;
using System.Collections.Generic;
using ROYcms.Common;
using ROYcms.Community.Model;
namespace ROYcms.Community.BLL
{
	/// <summary>
	/// 业务逻辑类ROYcms_Community 的摘要说明。
	/// </summary>
	public class ROYcms_Community
	{
		private readonly ROYcms.Community.DAL.ROYcms_Community dal=new ROYcms.Community.DAL.ROYcms_Community();
		public ROYcms_Community()
		{}
		#region  成员方法

		/// <summary>
		/// 得到最大ID
		/// </summary>
		public int GetMaxId()
		{
			return dal.GetMaxId();
		}

		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(int bh)
		{
			return dal.Exists(bh);
		}

		/// <summary>
		/// 增加一条数据
		/// </summary>
		public int  Add(ROYcms.Community.Model.ROYcms_Community model)
		{
			return dal.Add(model);
		}

		/// <summary>
		/// 更新一条数据
		/// </summary>
		public void Update(ROYcms.Community.Model.ROYcms_Community model)
		{
			dal.Update(model);
		}

		/// <summary>
		/// 删除一条数据
		/// </summary>
		public void Delete(int bh)
		{
			
			dal.Delete(bh);
		}

		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public ROYcms.Community.Model.ROYcms_Community GetModel(int bh)
		{
			
			return dal.GetModel(bh);
		}

		/// <summary>
		/// 得到一个对象实体，从缓存中。
		/// </summary>
		public ROYcms.Community.Model.ROYcms_Community GetModelByCache(int bh)
		{
			
			string CacheKey = "ROYcms_CommunityModel-" + bh;
			object objModel = ROYcms.Common.DataCache.GetCache(CacheKey);
			if (objModel == null)
			{
				try
				{
					objModel = dal.GetModel(bh);
					if (objModel != null)
					{
						int ModelCache = ROYcms.Common.ConfigHelper.GetConfigInt("ModelCache");
						ROYcms.Common.DataCache.SetCache(CacheKey, objModel, DateTime.Now.AddMinutes(ModelCache), TimeSpan.Zero);
					}
				}
				catch{}
			}
			return (ROYcms.Community.Model.ROYcms_Community)objModel;
		}

		/// <summary>
		/// 获得数据列表
		/// </summary>
		public DataSet GetList(string strWhere)
		{
			return dal.GetList(strWhere);
		}
		/// <summary>
		/// 获得前几行数据
		/// </summary>
		public DataSet GetList(int Top,string strWhere,string filedOrder)
		{
			return dal.GetList(Top,strWhere,filedOrder);
		}
		/// <summary>
		/// 获得数据列表
		/// </summary>
		public List<ROYcms.Community.Model.ROYcms_Community> GetModelList(string strWhere)
		{
			DataSet ds = dal.GetList(strWhere);
			return DataTableToList(ds.Tables[0]);
		}
		/// <summary>
		/// 获得数据列表
		/// </summary>
		public List<ROYcms.Community.Model.ROYcms_Community> DataTableToList(DataTable dt)
		{
			List<ROYcms.Community.Model.ROYcms_Community> modelList = new List<ROYcms.Community.Model.ROYcms_Community>();
			int rowsCount = dt.Rows.Count;
			if (rowsCount > 0)
			{
				ROYcms.Community.Model.ROYcms_Community model;
				for (int n = 0; n < rowsCount; n++)
				{
					model = new ROYcms.Community.Model.ROYcms_Community();
					if(dt.Rows[n]["bh"].ToString()!="")
					{
						model.bh=int.Parse(dt.Rows[n]["bh"].ToString());
					}
					model.title=dt.Rows[n]["title"].ToString();
					model.content=dt.Rows[n]["content"].ToString();
					model.tag=dt.Rows[n]["tag"].ToString();
					model.user_id=dt.Rows[n]["user_id"].ToString();
					model.type_id=dt.Rows[n]["type_id"].ToString();
					if(dt.Rows[n]["hits"].ToString()!="")
					{
						model.hits=int.Parse(dt.Rows[n]["hits"].ToString());
					}
					if(dt.Rows[n]["star_time"].ToString()!="")
					{
						model.star_time=DateTime.Parse(dt.Rows[n]["star_time"].ToString());
					}
					if(dt.Rows[n]["end_time"].ToString()!="")
					{
						model.end_time=DateTime.Parse(dt.Rows[n]["end_time"].ToString());
					}
					model.ip=dt.Rows[n]["ip"].ToString();
					if(dt.Rows[n]["switchs"].ToString()!="")
					{
						model.switchs=int.Parse(dt.Rows[n]["switchs"].ToString());
					}
					modelList.Add(model);
				}
			}
			return modelList;
		}

		/// <summary>
		/// 获得数据列表
		/// </summary>
		public DataSet GetAllList()
		{
			return GetList("");
		}

		/// <summary>
		/// 获得数据列表
		/// </summary>
		//public DataSet GetList(int PageSize,int PageIndex,string strWhere)
		//{
			//return dal.GetList(PageSize,PageIndex,strWhere);
		//}

		#endregion  成员方法
	}
}

