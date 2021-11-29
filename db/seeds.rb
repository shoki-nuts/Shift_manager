10.times do |n|
    User.create(
        user_name: "ユーザー#{n + 1}",
        nickname: "ユーザー#{n + 1}",
        email: "user#{n + 1}@test.com",
        password: "password",
        admin_user: false,
    )
    User.create(
        user_name: "管理者#{n + 1}", 
        nickname: "管理者#{n + 1}",
        email: "admin#{n + 11}@test.com",
        password: "password",
        admin_user: true,
    )
end