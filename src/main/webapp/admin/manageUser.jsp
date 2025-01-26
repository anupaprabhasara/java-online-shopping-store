<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ include file="./partials/header.jsp"%>

<main class="container main-content">
    <div class="page-header">
        <h1>User Management</h1>
        <button class="btn btn-primary" onclick="openCreateModal()">Create New User</button>
    </div>

    <div class="table-container">
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email</th>
                    <th>Password</th>
                    <th>Phone Number</th>
                    <th>User Type</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>John</td>
                    <td>Doe</td>
                    <td>john.doe@example.com</td>
                    <td>password123</td>
                    <td>+123456789</td>
                    <td>Admin</td>
                    <td class="actions">
                        <button class="btn btn-primary" onclick="openEditModal()">Edit</button>
                        <button class="btn btn-danger" onclick="showDeleteModal(1)">Delete</button>
                    </td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Jane</td>
                    <td>Smith</td>
                    <td>jane.smith@example.com</td>
                    <td>securepass</td>
                    <td>+987654321</td>
                    <td>User</td>
                    <td class="actions">
                        <button class="btn btn-primary" onclick="openEditModal()">Edit</button>
                        <button class="btn btn-danger" onclick="showDeleteModal(2)">Delete</button>
                    </td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>Michael</td>
                    <td>Johnson</td>
                    <td>michael.j@example.com</td>
                    <td>mypassword</td>
                    <td>+1122334455</td>
                    <td>User</td>
                    <td class="actions">
                        <button class="btn btn-primary" onclick="openEditModal()">Edit</button>
                        <button class="btn btn-danger" onclick="showDeleteModal(3)">Delete</button>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</main>

<!-- Create New User Modal -->
<div id="createModal" class="modal-overlay" style="display: none;">
    <div class="modal">
        <div class="modal-header">
            <h2>Create New User</h2>
            <button class="btn btn-danger" onclick="closeCreateModal()">&times;</button>
        </div>
        <form id="createUserForm">
            <div class="form-group">
                <label class="form-label">First Name</label>
                <input type="text" class="form-input" name="firstName">
            </div>
            <div class="form-group">
                <label class="form-label">Last Name</label>
                <input type="text" class="form-input" name="lastName">
            </div>
            <div class="form-group">
                <label class="form-label">Email</label>
                <input type="email" class="form-input" name="email">
            </div>
            <div class="form-group">
                <label class="form-label">Phone Number</label>
                <input type="text" class="form-input" name="phoneNumber">
            </div>
            <div class="form-group">
                <label class="form-label">User Type</label>
                <select class="form-input" name="userType">
                    <option value="User">User</option>
                    <option value="Admin">Admin</option>
                </select>
            </div>
            <div class="form-group">
                <label class="form-label">Password</label>
                <input type="password" class="form-input" name="password">
            </div>
            <button type="submit" class="btn btn-primary">Create User</button>
        </form>
    </div>
</div>

<!-- Edit User Modal -->
<div id="editModal" class="modal-overlay" style="display: none;">
    <div class="modal">
        <div class="modal-header">
            <h2>Edit User</h2>
            <button class="btn btn-danger" onclick="closeEditModal()">&times;</button>
        </div>
        <form id="editUserForm">
            <div class="form-group">
                <label class="form-label">First Name</label>
                <input type="text" class="form-input" name="firstName">
            </div>
            <div class="form-group">
                <label class="form-label">Last Name</label>
                <input type="text" class="form-input" name="lastName">
            </div>
            <div class="form-group">
                <label class="form-label">Email</label>
                <input type="email" class="form-input" name="email">
            </div>
            <div class="form-group">
                <label class="form-label">Phone Number</label>
                <input type="text" class="form-input" name="phoneNumber">
            </div>
            <div class="form-group">
                <label class="form-label">User Type</label>
                <select class="form-input" name="userType">
                    <option value="User">User</option>
                    <option value="Admin">Admin</option>
                </select>
            </div>
            <div class="form-group">
                <label class="form-label">Password</label>
                <input type="password" class="form-input" name="password">
            </div>
            <button type="submit" class="btn btn-primary">Update User</button>
        </form>
    </div>
</div>

<!-- Delete Confirmation Modal -->
<div id="deleteModal" class="modal-overlay" style="display: none;">
    <div class="modal">
        <div class="modal-header">
            <h2>Confirm Delete</h2>
            <button class="btn btn-danger" onclick="closeDeleteModal()">&times;</button>
        </div>
        <p>Are you sure you want to delete this user?</p>
        <div style="margin-top: 1rem; display: flex; gap: 1rem;">
            <button class="btn btn-danger" onclick="confirmDelete()">Delete</button>
            <button class="btn btn-primary" onclick="closeDeleteModal()">Cancel</button>
        </div>
    </div>
</div>

<%@ include file="./partials/footer.jsp"%>