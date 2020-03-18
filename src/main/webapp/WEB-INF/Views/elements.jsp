<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<div class="row">
	<div class="col-md-12">
		<b>BUTTON:</b>
	</div>
</div>
<div class="row">
	<div class="col-md-2">
		<div class="fjs-btn orange">
			<a href="#">Button1</a>
		</div>
	</div>
	<div class="col-md-2">
		<div class="fjs-btn green">
			<a href="#">Button2</a>
		</div>
	</div>
	<div class="col-md-2">
		<div class="fjs-btn red">
			<a href="#">Button3</a>
		</div>
	</div>
	<div class="col-md-2">
		<div class="fjs-btn blue">
			<a href="#">Button4</a>
		</div>
	</div>
</div>
<hr />
<div class="row">

	<div class="col-md-12">
		<b>INPUT TEXT:</b>
	</div>
	<div class="col-md-4">
		<input type="text" id="name" name="s" placeholder="Full Name" value="">
	</div>
	<div class="col-md-4">
		<select>
			<option>demo</option>
			<option>demo</option>
			<option>demo</option>
			<option>demo</option>
			<option>demo</option>
		</select>
	</div>
	<div class="col-md-4">
		<ul>
  <li>
    <input id="c1" type="checkbox">
    <label for="c1">Checkbox</label>
  </li>
  <li>
    <input id="c2" type="checkbox" checked>
    <label for="c2">Checkbox</label>
  </li>
  <li>
    <input id="r1" type="radio" name="radio" value="1">
    <label for="r1">Radio</label>
  </li>
  <li>
    <input id="r2" type="radio" name="radio" value="2" checked>
    <label for="r2">Radio</label>
  </li>
  <li>
    <input id="s1" type="checkbox" class="switch">
    <label for="s1">Switch</label>
  </li>
  <li>
    <input id="s2" type="checkbox" class="switch" checked>
    <label for="s2">Switch</label>
  </li>
</ul>

<ul>
  <li>
    <input id="c1d" type="checkbox" disabled>
    <label for="c1d">Checkbox</label>
  </li>
  <li>
    <input id="c2d" type="checkbox" checked disabled>
    <label for="c2d">Checkbox</label>
  </li>
  <li>
    <input id="r1d" type="radio" name="radiod" value="1" disabled>
    <label for="r1d">Radio</label>
  </li>
  <li>
    <input id="r2d" type="radio" name="radiod" value="2" checked disabled>
    <label for="r2d">Radio</label>
  </li>
  <li>
    <input id="s1d" type="checkbox" class="switch" disabled>
    <label for="s1d">Switch</label>
  </li>
  <li>
    <input id="s2d" type="checkbox" class="switch" checked disabled>
    <label for="s2d">Switch</label>
  </li>
</ul>
	</div>
</div>
<hr />
<div class="row">
	<div class="col-md-6">
		<b>DESCRIPTION PARAGRAPH:</b>
		<p class="p-1">For starters, lorem ipsum isn’t just some wacky
			text-thingy with no meaning whatsoever. These words have been derived
			from the Latin phrase ‘dolorem ipsum’ which translates to ‘pain
			itself’. Lorem Ipsum is a placeholder text used to illustrate graphic
			features by publishers and graphic designers. It is a pseudo-Latin
			text used instead of English in web design, typography, layout and
			printing to emphasize elements of design over content. It is also
			called the text (or filler) of the placeholder. It’s a handy tool for
			mock-ups. This helps define a text or presentation’s visual elements,
			such as typography, font, or format.</p>
	</div>
	<div class="col-md-6">
		<b>COMMON PARAGRAPH:</b>
		<p class="p-2">For starters, lorem ipsum isn’t just some wacky
			text-thingy with no meaning whatsoever. These words have been derived
			from the Latin phrase ‘dolorem ipsum’ which translates to ‘pain
			itself’. Lorem Ipsum is a placeholder text used to illustrate graphic
			features by publishers and graphic designers. It is a pseudo-Latin
			text used instead of English in web design, typography, layout and
			printing to emphasize elements of design over content. It is also
			called the text (or filler) of the placeholder. It’s a handy tool for
			mock-ups. This helps define a text or presentation’s visual elements,
			such as typography, font, or format.</p>
	</div>
</div>
<hr />
<div class="row">
	<b>MODAL:</b> <a href="#inline" class="inline">Show modal</a>
</div>
<hr />
<!-- [1] -->
<div class="row">
	<b>TABLE:</b>
	<div class="col-md-12">
		<table id="table" class="display table-striped table-bordered"
			style="width: 100%; line-height: 30px;">
			<thead>
				<tr>
					<th>Name</th>
					<th>Position</th>
					<th>Office</th>
					<th>Age</th>
					<th>Start date</th>
					<th>Salary</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>Tiger Nixon</td>
					<td>System Architect</td>
					<td>Edinburgh</td>
					<td>61</td>
					<td>2011/04/25</td>
					<td>$320,800</td>
				</tr>
				<tr>
					<td>Garrett Winters</td>
					<td>Accountant</td>
					<td>Tokyo</td>
					<td>63</td>
					<td>2011/07/25</td>
					<td>$170,750</td>
				</tr>
				<tr>
					<td>Ashton Cox</td>
					<td>Junior Technical Author</td>
					<td>San Francisco</td>
					<td>66</td>
					<td>2009/01/12</td>
					<td>$86,000</td>
				</tr>
				<tr>
					<td>Cedric Kelly</td>
					<td>Senior Javascript Developer</td>
					<td>Edinburgh</td>
					<td>22</td>
					<td>2012/03/29</td>
					<td>$433,060</td>
				</tr>
				<tr>
					<td>Airi Satou</td>
					<td>Accountant</td>
					<td>Tokyo</td>
					<td>33</td>
					<td>2008/11/28</td>
					<td>$162,700</td>
				</tr>
				<tr>
					<td>Brielle Williamson</td>
					<td>Integration Specialist</td>
					<td>New York</td>
					<td>61</td>
					<td>2012/12/02</td>
					<td>$372,000</td>
				</tr>
				<tr>
					<td>Herrod Chandler</td>
					<td>Sales Assistant</td>
					<td>San Francisco</td>
					<td>59</td>
					<td>2012/08/06</td>
					<td>$137,500</td>
				</tr>
				<tr>
					<td>Rhona Davidson</td>
					<td>Integration Specialist</td>
					<td>Tokyo</td>
					<td>55</td>
					<td>2010/10/14</td>
					<td>$327,900</td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<th>Name</th>
					<th>Position</th>
					<th>Office</th>
					<th>Age</th>
					<th>Start date</th>
					<th>Salary</th>
				</tr>
			</tfoot>
		</table>
	</div>
</div>

<div id="inline" style="display: none;">
	<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam.
		Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis
		vestibulum. Praesent commodo cursus magna, vel scelerisque nisl
		consectetur et.</p>
</div>
