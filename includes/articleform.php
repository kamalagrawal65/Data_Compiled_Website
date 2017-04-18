  <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/normalize.css">
        <link href='http://fonts.googleapis.com/css?family=Nunito:400,300' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="css/main.css">
    </head>
    <style>
    	*, *:before, *:after {
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
}
.form1 {
  max-width: 500px;
  margin: 10px auto;
  padding: 10px 20px;
  background: #f4f7f8;
  border-radius: 8px;
}

h1 {
  margin: 0 0 30px 0;
  text-align: center;
}

.inp,
textarea{
  background: rgba(255,255,255,0.1);
  border: none;
  font-size: 16px;
  height: auto;
  margin: 0;
  outline: 0;
  padding: 15px;
  width: 100%;
  background-color: #e8eeef;
  color: #8a97a0;
  box-shadow: 0 1px 0 rgba(0,0,0,0.03) inset;
  margin-bottom: 30px;
}

button {
  padding: 19px 39px 18px 39px;
  color: #FFF;
  background-color: #4bc970;
  font-size: 18px;
  text-align: center;
  font-style: normal;
  border-radius: 5px;
  width: 100%;
  border: 1px solid #3ac162;
  border-width: 1px 1px 3px;
  box-shadow: 0 -1px 0 rgba(255,255,255,0.1) inset;
  margin-bottom: 10px;
}

fieldset {
  margin-bottom: 30px;
  border: none;
}

legend {
  font-size: 1.4em;
  margin-bottom: 10px;
}

label {
  display: block;
  margin-bottom: 8px;
}

label.light {
  font-weight: 300;
  display: inline;
}

.number {
  background-color: #5fcf80;
  color: #fff;
  height: 30px;
  width: 30px;
  display: inline-block;
  font-size: 0.8em;
  margin-right: 4px;
  line-height: 30px;
  text-align: center;
  text-shadow: 0 1px 0 rgba(255,255,255,0.2);
  border-radius: 100%;
}
#bio{
	height:400px;
}
    </style>
    <body>

      <form action="writearticle.php" method="post" class="form1">
      
        <h1>Write To Us</h1>
        
        <fieldset>
          <legend><span class="number">1</span>Basic info</legend>
          <label for="name">Name*</label>
          <input type="text" id="name" name="username" class="inp" required>
          
          <label for="kind">Category*</label>
          <select name="kind" class="inp" required>
            <option value="1">Interview Experience</option>
            <option value="8">Programs</option>
            <option value="7">Knowledge</option>
            <option value="9">Products</option>
            <option value="10">General Knowledge</option>
            <option value="11">Sports</option>
          </select>
          <!-- <input type="text" id="kind" name="kind" class="inp" required> -->
          
          <label for="branch">Branch*</label>
          <!-- <input type="text" id="branch" name="branch" class="inp" required> -->
          <select name="branch" class="inp" required>
            <option value="1">Computer Science</option>
            <option value="2">Mechanical</option>
            <option value="3">Civil</option>
            <option value="5">Chemical</option>
            <option value="10">Other</option>
            <option value="8">Electrical</option>
            <option value="9">Electronics</option>
          </select>
          
        </fieldset>
        
        <fieldset>
          <legend><span class="number">2</span>Share Your Article</legend>
          <label for="title">Title*</label>
          <textarea id="title" name="title" class="inp" required></textarea>

          <label for="bio">Article*</label>
          <textarea id="bio" name="article" class="inp" required></textarea>

          <label for="links">Other Useful Links</label>
          <textarea id="links" name="links" class="inp"></textarea>


        </fieldset>
        <button type="submit" name="send">Send</button>
      </form>
      
    </body>
</html>