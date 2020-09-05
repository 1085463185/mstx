<template>
	<div>
		<template>
		  <el-table
		    :data="menu"
		    style="width: 100%"
		    max-height="600">
		    <el-table-column
		      fixed
		      label="图片"
		      width="150">
			    <template scope="scope">
			        <img :src="scope.row.src" width="80" height="80" class="head_pic"/>
			    </template>
		    </el-table-column>
		    <el-table-column
		      prop="name"
		      label="名称"
		      width="120">
		    </el-table-column>
		    <el-table-column
		      prop="kind"
		      label="种类"
		      width="120">
		    </el-table-column>
		   <el-table-column
		     prop="description"
		     label="描述"
		     width="250">
		   </el-table-column>
		  
		    
		    <el-table-column
		      fixed="right"
		      label="操作"
		      width="120">
		      <template slot-scope="scope">
		        <el-button
		          @click.native.prevent="deleteRow(scope.$index, menu)"
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
	        menu: []
	      }
	    },
		methods: {
			getmenu(){
				this.$http.get("http://localhost:8000/allmenu")
				.then(res=>{
					this.menu=res.data;
				})
			},
			deleteRow(index, rows) {
				this.$http.post("http://localhost:8000/delmenu",{
					id:(this.menu)[index].id
				}).then(res=>{
					console.log(res.data.affectedRows)
					if(res.data.affectedRows==1){
						this.menu.splice(index,1)
					}
				})
				rows.splice(index, 1);
			}
		},
		created() {
			this.getmenu();
		}
	  }
</script>

<style>
	
</style>
