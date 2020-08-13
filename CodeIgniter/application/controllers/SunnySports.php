<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class SunnySports extends CI_Controller {
	public function index()
	{
	$data["pageTitle"] = "Welcome";
	$this->load->database();
	$this->load->view('HomePage');
	}

  public function listing()
  {
				$this->load->database();
				$sql_string = "";
				if($this->uri->segment(4)==1){
					$sql_string = "SELECT * FROM sessions NATURAL JOIN formats NATURAL JOIN venues NATURAL JOIN cities
					NATURAL JOIN sports NATURAL JOIN levels NATURAL JOIN sessions_organizers NATURAL JOIN organizers
					NATURAL JOIN sessions_trainers NATURAL JOIN trainers"
												. " WHERE sport_id='"
												. $this->uri->segment(3)
												. "' ";
				}
				else if($this->uri->segment(4)==2){
					$sql_string = "SELECT * FROM sessions NATURAL JOIN formats NATURAL JOIN venues NATURAL JOIN cities
					NATURAL JOIN sports NATURAL JOIN levels NATURAL JOIN sessions_organizers NATURAL JOIN organizers
					NATURAL JOIN sessions_trainers NATURAL JOIN trainers"
												. " WHERE level_id='"
												. $this->uri->segment(3)
												. "' ";
				}
				else if($this->uri->segment(4)==3){
					$sql_string = "SELECT * FROM sessions NATURAL JOIN formats NATURAL JOIN venues NATURAL JOIN cities
					NATURAL JOIN sports NATURAL JOIN levels NATURAL JOIN sessions_organizers NATURAL JOIN organizers
					NATURAL JOIN sessions_trainers NATURAL JOIN trainers"
												. " WHERE city_id='"
												. $this->uri->segment(3)
												. "' ";
				}
				else if($this->uri->segment(4)==4){
					$sql_string = "SELECT * FROM sessions NATURAL JOIN formats NATURAL JOIN venues NATURAL JOIN cities
					NATURAL JOIN sports NATURAL JOIN levels NATURAL JOIN sessions_organizers NATURAL JOIN organizers
					NATURAL JOIN sessions_trainers NATURAL JOIN trainers"
												. " WHERE trainer_id='"
												. $this->uri->segment(3)
												. "' ";
				}
				else if($this->uri->segment(4)==5){
					$sql_string = "SELECT * FROM sessions NATURAL JOIN formats NATURAL JOIN venues NATURAL JOIN cities
					NATURAL JOIN sports NATURAL JOIN levels NATURAL JOIN sessions_organizers NATURAL JOIN organizers
					NATURAL JOIN sessions_trainers NATURAL JOIN trainers"
												. " WHERE organizer_id='"
												. $this->uri->segment(3)
												. "' ";
				}
				else if($this->uri->segment(4)==6){
					$sql_string = "SELECT * FROM sessions NATURAL JOIN formats NATURAL JOIN venues NATURAL JOIN cities
					NATURAL JOIN sports NATURAL JOIN levels NATURAL JOIN sessions_organizers NATURAL JOIN organizers
					NATURAL JOIN sessions_trainers NATURAL JOIN trainers"
												. " WHERE format_id='"
												. $this->uri->segment(3)
												. "' ";
				}
				//echo "<br /><b>SQL COMMAND:</b> " . $sql_string;

				$sql_query = $this->db->query($sql_string);
				$data["query_listing"] = $sql_query;

        $this->load->view('sports_listing', $data);

  }

public function session(){
  $this->load->database();
  $sql_string = "SELECT * FROM sessions NATURAL JOIN formats NATURAL JOIN venues NATURAL JOIN cities
	NATURAL JOIN sports NATURAL JOIN levels NATURAL JOIN sessions_organizers NATURAL JOIN organizers
	NATURAL JOIN sessions_trainers NATURAL JOIN trainers"
                . " WHERE session_id='"
                . $this->uri->segment(3)
                . "' ";
  //echo "<br /><b>SQL COMMAND:</b> " . $sql_string;
	$sql_string2 = "SELECT * FROM sessions NATURAL JOIN formats NATURAL JOIN venues NATURAL JOIN cities
	NATURAL JOIN sports NATURAL JOIN levels NATURAL JOIN sessions_organizers NATURAL JOIN organizers
	NATURAL JOIN sessions_trainers NATURAL JOIN trainers"
								. " WHERE sport_id='"
								. $this->uri->segment(4)
								. "' "
								. " AND session_id !='"
								. $this->uri->segment(3)
								. "' ";
  $sql_query = $this->db->query($sql_string);
  $data["query_session"] = $sql_query;
	$sql_query = $this->db->query($sql_string2);
  $data["query_sessions"] = $sql_query;
  $this->load->view('session', $data);
}

public function bookPage(){
	$this->load->view('bookPage');
}

public function book(){
	$this->load->view('book');
}

public function search(){
	$this->load->view('search');

}

}
