<template>
	<div>
		<template>
		  <el-table
		    :data="user"
		    style="width: 100%"
		    max-height="600">
		    <el-table-column
		      fixed
		      prop="usename"
		      label="电话"
		      width="150">
		    </el-table-column>
			<el-table-column
			  
			  label="头像"
			  width="120">
			  <template scope="scope">
			      <img :src="scope.row.headimg" width="80" height="80" class="head_pic"/>
			  </template>
			</el-table-column>
		    <el-table-column
		      prop="name"
		      label="昵称"
		      width="120">
		    </el-table-column>
		    <el-table-column
		      prop="label"
		      label="个性签名"
		      width="120">
		    </el-table-column>
		   
		    <el-table-column
		      fixed="right"
		      label="操作"
		      width="120">
		      <template slot-scope="scope">
		        <el-button
		          @click.native.prevent="deleteRow(scope.$index, user)"
		          type="text"
		          size="small">
		          移除
		        </el-button>
		      </template>
		    </el-table-column>
		  </el-table>
		</template>
	</div>
</template>

<script>
	 export default {
	    data() {
	      return {
	        user: []
	      }
	    },
		methods: {
			//获取用户信息
			getuser(){
				this.$http.get("http://localhost:8000/adlogin",{
					
				}).then(res=>{
					this.user=res.data;
				})
			},
			//删除用户
		  deleteRow(index, rows) {
			console.log((this.user)[index].id)
		    
			this.$http.post("http://localhost:8000/deluser",{
				id:(this.user)[index].id
			}).then(res=>{
				console.log(res.data.affectedRows)
				if(res.data.affectedRows==1){
					this.user.splice(index,1)
				}
			})
			rows.splice(index, 1);
		  }
		},
		created() {
			this.getuser();
		}
	  }
</script>

<style>
</style>
