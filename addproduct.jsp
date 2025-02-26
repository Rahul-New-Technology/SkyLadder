<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Product</title>
     <link rel="stylesheet" href="css/addproduct.css">
</head>
<body>
    <div class="container">
        <h1>Add New Product</h1>
        <form id="addProductForm" method="Post" action="savedproduct" enctype="multipart/form-data">
            <label for="productName">Product Name:</label>
            <input type="text" id="productName" name="productName" required>

            <label for="productCategory">Category:</label>
            <select id="productCategory" name="productCategory" required>
                <option value="">Select a category</option>
                <option value="electronics">Electronics</option>
                <option value="fashion">Fashion</option>
                <option value="home">Home</option>
                <option value="books">Books</option>
            </select>

            <label for="productPrice">Price:</label>
            <input type="number" id="productPrice" name="productPrice" step="0.01" required>

            <label for="productBrand">Brand:</label>
            <input type="text" id="productBrand" name="productBrand">

            <label for="productSKU">SKU (Stock Keeping Unit):</label>
            <input type="text" id="productSKU" name="productSKU">

            <label for="productQuantity">Quantity:</label>
            <input type="number" id="productQuantity" name="productQuantity" required>

            <label for="productDiscount">Discount (%):</label>
            <input type="number" id="productDiscount" name="productDiscount" step="0.01">

            <label for="productDescription">Description:</label>
            <textarea id="productDescription" name="productDescription" rows="4" required></textarea>

            <label for="productImage">Image:</label>
            <input type="file" id="productImage" name="productImage" accept="image/*" required>

            <button type="submit" value="Add Product">ADD PRODUCT</button>
        </form>
    </div>

    <script>
    document.getElementById('addProductForm').addEventListener('submit', function(event) {
        const name = document.getElementById('productName').value.trim();
        const category = document.getElementById('productCategory').value;
        const price = document.getElementById('productPrice').value;
        const quantity = document.getElementById('productQuantity').value;
        const description = document.getElementById('productDescription').value.trim();
        const fileInput = document.getElementById('productImage');
        const file = fileInput.files[0];

        if (!name || !category || !price || !quantity || !description || !file) {
            alert('Please fill out all required fields and upload an image.');
            event.preventDefault(); // Prevent form submission
        }
    });
    </script>
</body>
</html>
