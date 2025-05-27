% rebase('layout.tpl', title=title, year=year)

<div class="jumbotron">
    <img src="/static/images/VPS.png" alt="VPS Logo" class="vps-logo">
    <p class="lead">Active Users of VPS Market:

    Discover the vibrant community of active users on the VPS Market platform. 
        These users are engaging with our reliable, high-performance, and secure VPS servers to boost their productivity. 
        Become part of this growing network today!</p>
</div>

<div class="user-form">
    <h2>Add New User</h2>
    <form id="userForm" action="/active_us" method="post" onsubmit="return validateForm()">
        <div class="form-group">
            <label for="author">Author (Name/Nickname)</label>
            <input type="text" id="author" name="author" value="{{form_data.get('author', '')}}" class="form-control" placeholder="Enter name or nickname">
            % if errors.get('author'):
            <p class="error">{{errors['author']}}</p>
            % end
            <p class="client-error" id="author-error"></p>
        </div>

        <div class="form-group">
            <label for="description">Description</label>
            <textarea id="description" name="description" class="form-control" placeholder="Enter description">{{form_data.get('description', '')}}</textarea>
            % if errors.get('description'):
            <p class="error">{{errors['description']}}</p>
            % end
            <p class="client-error" id="description-error"></p>
        </div>

        <div class="form-group">
            <label for="date">Date (DD.MM.YYYY)</label>
            <input type="text" id="date" name="date" value="{{form_data.get('date', '')}}" class="form-control" placeholder="DD.MM.YYYY">
            % if errors.get('date'):
            <p class="error">{{errors['date']}}</p>
            % end
            <p class="client-error" id="date-error"></p>
        </div>

        <div class="form-group">
            <label for="phone">Phone (+7(XXX)XXX-XX-XX)</label>
            <input type="text" id="phone" name="phone" value="{{form_data.get('phone', '')}}" class="form-control" placeholder="+7(XXX)XXX-XX-XX">
            % if errors.get('phone'):
            <p class="error">{{errors['phone']}}</p>
            % end
            <p class="client-error" id="phone-error"></p>
        </div>

        % if errors.get('duplicate'):
        <div class="form-group">
            <p class="error">{{!errors['duplicate']}}</p>
        </div>
        % end

        <button type="submit" class="submit-btn">Add</button>
    </form>
</div>

<div class="user-list">
    <h2>List of Active Users</h2>
    % for user in users:
    <div class="user-item">
        <h3>{{user['author']}}</h3>
        <p>{{user['description']}}</p>
        <p><strong>Date:</strong> {{user['date']}}</p>
        <p><strong>Phone:</strong> {{user['phone']}}</p>
    </div>
    % end
</div>

<script src="/static/scripts/active_users.js"></script>
