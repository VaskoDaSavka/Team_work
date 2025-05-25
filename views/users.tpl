% rebase('layout.tpl', title='VPS', year=year)
    
    <form class="form-users" method="POST">
        <h1>Active users</h1>
        <div>
            <label>Username:</label>
            <input type="text" name="name" value="{{ form_data.get('name', '') }}">
            % if 'name' in errors:
                <span class="error">{{ errors['name'] }}</span>
            % end
        </div>
        
        <div>
            <label>Phone (+7XXX-XXX-XX-XX):</label>
            <input type="text" name="phone" value="{{ form_data.get('phone', '') }}">
            % if 'phone' in errors:
                <span class="error">{{ errors['phone'] }}</span>
            % end
        </div>
        
        <div>
            <label>Date of Activity (DD.MM.YYYY):</label>
            <input type="text" name="date" value="{{ form_data.get('date', '') }}">
            % if 'date' in errors:
                <span class="error">{{ errors['date'] }}</span>
            % end
        </div>
        
        <button class="submit-add" type="submit">Add</button>
    </form>
    
    <h2>List of active users</h2>
    <ul>
        % for user in users:
            <li>
                <strong>{{ user['name'] }}</strong> |
                Phone: {{ user['phone'] }} | 
                Date: {{ user['date'] }}
            </li>
        % end
    </ul>
</body>

