from flask import*
import pymysql
app=Flask(__name__)
@app.route("/")
def Homepage():
   
#    connect to DB 

 connection=pymysql.connect(host='localhost',user='root',password='',database='jumiya')
 sql="select * from products WHERE product_category = 'phones' "
 sql1="select * from products WHERE product_category = 'monitors' "
 sql2="select * from products WHERE product_category ='Beds' "
 
 
#  you need to have a cursor 
#  cursor-used to run /execute above sql 
 cursor=connection.cursor()
 cursor1=connection.cursor()
 cursor2=connection.cursor()

#  execute 
 cursor.execute(sql)
 cursor1.execute(sql1)
 cursor2.execute(sql2)

#  fetch  all the phones rows

 phones=cursor.fetchall()
# fetch all monitors 
 monitors=cursor1.fetchall()
 beds=cursor2.fetchall()


 return render_template("index.html",phones = phones,monitors=monitors,beds=beds)

# route fo a single item 
@app.route("/single/<product_id>")
def singleitem(product_id):
    # connection to db 
     connection=pymysql.connect(host='localhost',user='root',password='',database='jumiya')
# create sql query 
     sql= " select * from products where product_id = %s "
    #  create a cursor 
     cursor =connection.cursor()
     cursor.execute(sql,product_id)
    #  get the single product 
     product=cursor.fetchone() 
     return render_template ("single.html",product=product)

#upload products
@app.route("/upload",methods=['POST','GET'])
def Upload():
    if request.method == 'POST':
        # uer can add the products 
        product_name= request.form['product_name']
        product_desc =request.form['product_desc']
        product_cost =request.form['product_cost']
        product_category =request.form['product_category']
        product_image_name =request.files['product_image_name']
        product_image_name.save('static/images/' +  product_image_name.filename )

        # connection to db 

        connection=pymysql.connect(host='localhost',user='root',password='',database='jumiya')
        cursor=connection.cursor()

        sql= "insert into products (product_name, product_desc, product_cost, product_category, product_image_name) values(%s,%s,%s,%s,%s)"
        data = product_name, product_desc,product_cost,product_category ,product_image_name.filename


        # execute
        cursor.execute(sql,data)
        # save the changes 
        connection.commit()

        return render_template("upload.html", message = "product added successful")

    else:
     return render_template("upload.html", error = "please add a product ")
    
# fashion route-helps you nto see all the fashion 
@app.route("/fashion")
def Fashion():
    connection=pymysql.connect(host='localhost',user='root',password='',database='jumiya')
    sql="select * from products WHERE product_category = 'dresses' "
    sql1="select * from products WHERE product_category = 'handbags' "
    sql2="select * from products WHERE product_category ='cap' "
    sql3="select * from products WHERE product_category ='socks' "
    sql4="select * from products WHERE product_category ='belt' "
    
 
 
#  you need to have a cursor 
#  cursor-used to run /execute above sql 
    cursor=connection.cursor()
    cursor1=connection.cursor()
    cursor2=connection.cursor()
    cursor3=connection.cursor()
    cursor4=connection.cursor()



#  execute 
    cursor.execute(sql)
    cursor1.execute(sql1)
    cursor2.execute(sql2)
    cursor3.execute(sql3)
    cursor4.execute(sql4)


#  fetch  all the phones rows

    dresses=cursor.fetchall()
# fetch all monitors 
    handbags=cursor1.fetchall()
    cap=cursor2.fetchall()
    socks=cursor3.fetchall()
    belt=cursor4.fetchall()
    

    return render_template("fashion.html",dresses=dresses,handbags=handbags,cap=cap,socks=socks,belt=belt )
# a route to upload fashion
@app.route("/uploadfashion",methods=['POST','GET'])
def Uploadfashion():
    if request.method == 'POST':
        # uer can add the products 
        product_name= request.form['product_name']
        product_desc =request.form['product_desc']
        product_cost =request.form['product_cost']
        product_category =request.form['product_category']
        product_image_name =request.files['product_image_name']
        product_image_name.save('static/images/' +  product_image_name.filename )

        # connection to db 

        connection=pymysql.connect(host='localhost',user='root',password='',database='jumiya')
        cursor=connection.cursor()

        sql= "insert into products (product_name, product_desc, product_cost, product_category, product_image_name) values(%s,%s,%s,%s,%s)"
        data = product_name, product_desc,product_cost,product_category ,product_image_name.filename


        # execute
        cursor.execute(sql,data)
        # save the changes 
        connection.commit()

        return render_template("uploadfashion.html", message = "fashion added successful")

    else:
     return render_template("uploadfashion.html", error = "please add a fashion ")


@app.route("/about")
def About():
    return("this is about page")
# creating registration
@app.route("/register")
def Register():
    return("this is register page")
@app.route("/login")
def Login():
    return("this is login page")
@app.route("/logout")
def Logout():
    return("this is logout page")
if __name__=="__main__":
    app.run(debug= True,port=4000)
