<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class News extends CI_Controller {
	public function index()
	{
	$data["pageTitle"] = "Welcome";
	$data["pageHeading"] = "Featuring";

	$this->load->database();
	$sql_string = 'SELECT * FROM news_cat ORDER BY sorting';
	//echo "<br /><b>SQL COMMAND:</b> " . $sql_string;
	$sql_query = $this->db->query($sql_string);
	$data["query_categories"] = $sql_query;

	$sql_string = 'SELECT * FROM news ORDER BY id';
	//echo "<br /><b>SQL COMMAND:</b> " . $sql_string;
	$sql_query = $this->db->query($sql_string);
	$data["query_featuring"] = $sql_query;

	$this->load->view('header', $data);
	$this->load->view('navigation', $data);
	$this->load->view('news_featuring', $data);
	$this->load->view('footer', $data);

	}


  public function categories()
	{
		$data["pageTitle"] = "News Category";
		$data["pageHeading"] = "Please select a news category";

		$this->load->database();
		$sql_query = $this->db->query('SELECT * FROM news_cat');

		$data["query_categories"] = $sql_query;
		$this->load->view('news_categories', $data);
	}


  public function listing()
  {
				$data["pageTitle"] = "News Listing";
				$data["pageHeading"] = "Please select a news below";

				$this->load->database();

				$sql_string = 'SELECT * FROM news_cat ORDER BY sorting';
				//echo "<br /><b>SQL COMMAND:</b> " . $sql_string;
				$sql_query = $this->db->query($sql_string);
				$data["query_categories"] = $sql_query;

				$sql_string = "SELECT * FROM news"
											. " WHERE cat_id='"
											. $this->uri->segment(3)
											. "' ";
				//echo "<br /><b>SQL COMMAND:</b> " . $sql_string;

				$sql_query = $this->db->query($sql_string);
				$data["query_listing"] = $sql_query;

				$this->load->view('header', $data);
				$this->load->view('navigation', $data);
				$this->load->view('news_listing', $data);
				$this->load->view('footer', $data);

  }

	public function fulltext()
	{

		$data["pageTitle"] = "Viewing News";

		$this->load->database();

		$sql_string = 'SELECT * FROM news_cat ORDER BY sorting';
		//echo "<br /><b>SQL COMMAND:</b> " . $sql_string;
		$sql_query = $this->db->query($sql_string);
		$data["query_categories"] = $sql_query;
		$sql_string = "SELECT * FROM news"
				. " WHERE id='"
				. $this->uri->segment(3)
				. "' ";
		//echo "<br /><b>SQL COMMAND:</b> " . $sql_string;

		$sql_query = $this->db->query($sql_string);

		$data["query_fulltext"] = $sql_query;


		$this->load->view('header', $data);
		$this->load->view('navigation', $data);
		$this->load->view('news_fulltext', $data);
		$this->load->view('footer', $data);		

	}



}
