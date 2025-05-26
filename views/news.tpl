% rebase('layout.tpl', title=title, year=year)
<div class="container" style="margin-top: 40px;">
    <h2 style="font-family: 'Comic Sans MS', cursive, sans-serif; text-align: center; color: black; border-bottom: 2px solid #8A2BE2; padding-bottom: 10px;">
        Latest News
    </h2>

    % if success_message:
        <div class="alert alert-success" style="margin: 20px 0; background: #dff0d8; color: #3c763d; padding: 15px; border-radius: 10px; text-align: center;">
            {{ success_message }}
        </div>
    % end

    % if errors:
        <div class="alert alert-danger" style="margin: 20px 0; background: #f2dede; color: #a94442; padding: 15px; border-radius: 10px; text-align: center;">
            <ul style="list-style-type: none; padding: 0;">
                % for error in errors:
                    <li>{{ error }}</li>
                % end
            </ul>
        </div>
    % end

    <div class="news-form" style="background: #ffffff; padding: 20px; border-radius: 15px; border: 3px solid #8A2BE2; margin-bottom: 30px; margin-left: auto; margin-right: auto;">
        <h3 style="font-family: 'Comic Sans MS', cursive, sans-serif; color: black;">Add News</h3>
        <form method="POST" action="/news">
            <div class="form-group" style="margin-bottom: 15px;">
                <label for="title" style="font-family: 'Comic Sans MS', cursive, sans-serif; color: black;">News Title</label>
                <input type="text" name="title" id="title" class="form-control" value="{{ form_data['title'] }}" style="border-radius: 5px; border: 2px solid #8A2BE2; width: 100%; padding: 10px;">
            </div>
            <div class="form-group" style="margin-bottom: 15px;">
                <label for="author" style="font-family: 'Comic Sans MS', cursive, sans-serif; color: black;">Author</label>
                <input type="text" name="author" id="author" class="form-control" value="{{ form_data['author'] }}" style="border-radius: 5px; border: 2px solid #8A2BE2; width: 100%; padding: 10px;">
            </div>
            <div class="form-group" style="margin-bottom: 15px;">
                <label for="description" style="font-family: 'Comic Sans MS', cursive, sans-serif; color: black;">Description</label>
                <textarea name="description" id="description" class="form-control" rows="5" style="border-radius: 5px; border: 2px solid #8A2BE2; width: 100%; padding: 10px;">{{ form_data['description'] }}</textarea>
            </div>
            <div class="form-group" style="margin-bottom: 15px;">
                <label for="date" style="font-family: 'Comic Sans MS', cursive, sans-serif; color: black;">Date (DD.MM.YYYY)</label>
                <input type="text" name="date" id="date" class="form-control" value="{{ form_data['date'] }}" style="border-radius: 5px; border: 2px solid #8A2BE2; width: 100%; padding: 10px;">
            </div>
            <button type="submit" class="btn btn-primary" style="background: #8A2BE2; border: none; font-family: 'Comic Sans MS', cursive, sans-serif; padding: 10px 20px; border-radius: 5px;">Add</button>
        </form>
    </div>

    <div class="news-list">
        % if news_items:
            % for item in news_items:
                <div class="news-item" style="background: #ffffff; padding: 15px; border-radius: 10px; border: 2px solid #8A2BE2; margin-bottom: 15px;">
                    <h4 style="font-family: 'Comic Sans MS', cursive, sans-serif; color: black; margin: 0 0 10px 0;">{{ item['title'] }}</h4>
                    <p style="margin: 0; color: #333;"><strong>Author:</strong> {{ item['author'] }} | <strong>Date:</strong> {{ item['date'] }}</p>
                    <p style="margin: 10px 0 0 0; color: #333;">{{ item['description'] }}</p>
                </div>
            % end
        % else:
            <p style="text-align: center; color: black;">No news available.</p>
        % end
    </div>
</div>