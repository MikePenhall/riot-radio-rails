FactoryGirl.define do
   factory :post do
     sequence(:title) { |n| "Title number #{n}" }
     body "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut id ante sagittis, auctor leo et, adipiscing magna. Quisque libero ipsum, euismod vel quam ut, mollis consectetur dolor. Aliquam eu volutpat neque, sit amet lobortis dui. Quisque sit amet varius justo, ut ornare dui. Fusce ullamcorper purus erat, eu porta metus adipiscing eu. Suspendisse potenti. Aenean et tristique erat. Mauris condimentum lacus in consequat condimentum. Aliquam nec luctus nisi. Nunc placerat semper accumsan. Sed tempus accumsan turpis quis tempor. Aliquam blandit, sem nec eleifend ultrices, lacus nisi pretium tellus, et feugiat libero arcu eget risus. Duis scelerisque, mi ornare elementum vehicula, lorem justo iaculis magna, at dapibus urna massa eget est. Donec nisi eros, vulputate sed erat a, euismod rhoncus erat. Cras et feugiat metus. Donec sagittis gravida laoreet. "
     sequence(:slug) { |n| "title-number-#{n}" }
   end
end