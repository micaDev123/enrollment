<div class="col-sm-12">
				  	<div class="panel panel-info">
                            <div class="panel-heading"> <i class="fa fa-list"></i>&nbsp;&nbsp;<?php echo get_phrase('list_grade_students');?></div>
                            <div class="panel-wrapper collapse in" aria-expanded="true">
                                <div class="panel-body table-responsive">
                    
                <div class="form-group">
                    <div class="col-sm-12">
                    <select id="section_id" class="form-control">
                    <option value=""><?php echo get_phrase('select_grade_level');?></option>

                    <?php $section =  $this->db->get('section')->result_array();
                    foreach($section as $key => $section):?>
                    <option value="<?php echo $section['section_id'];?>"
                    <?php if($section_id == $section['section_id']) echo 'selected';?>><?php echo $section['section_name'];?></option>
                    <?php endforeach;?>
                   </select>

                  </div>
                 </div>
                 <button type="button" id="find" class="btn btn-success btn-rounded btn-sm btn-block">Get Student</button>
                 <hr>
				
 				<!-- PHP that includes table for subject starts here  ------>
                <div id="data">
                <?php include 'showStudentSectionwise.php';?>
                </div>
                <!-- PHP that includes table for subject ends here  ------>


				</div>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
	$(document).ready(function() {

		$('#section_id').select2();
		$('#find').on('click', function() 
		{
			var section_id = $('#section_id').val();
			 if (section_id == "") {
           $.toast({
            text: 'Please select class before clicking get student button',
            position: 'top-right',
            loaderBg: '#f56954',
            icon: 'warning',
            hideAfter: 3500,
            stack: 6
        })
            return false;
        }
			$.ajax({
				url: '<?php echo site_url('admin/getStudentSectionwise/');?>' + section_id
			}).done(function(response) {
                console.log(section_id);
				$('#data').html(response);
			});
		});

	});


</script>