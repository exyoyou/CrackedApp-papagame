.class public Lcom/baidu/mobads/sdk/internal/a/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/api/IOAdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobads/sdk/internal/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/baidu/mobads/sdk/api/IAdInterListener;[Ljava/lang/Object;)Lcom/baidu/mobads/sdk/internal/a/a;
    .locals 4
    .param p2    # Lcom/baidu/mobads/sdk/api/IAdInterListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "ViewPager2"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-array v0, v1, [Ljava/lang/Class;

    .line 12
    .line 13
    const-class v3, Landroid/content/Context;

    .line 14
    .line 15
    aput-object v3, v0, v2

    .line 16
    .line 17
    invoke-static {p3, v0}, Lcom/baidu/mobads/sdk/internal/a/c;->a([Ljava/lang/Object;[Ljava/lang/Class;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    new-instance p1, Lcom/baidu/mobads/sdk/internal/concrete/ViewPager2Delegate;

    .line 24
    .line 25
    aget-object p3, p3, v2

    .line 26
    .line 27
    check-cast p3, Landroid/content/Context;

    .line 28
    .line 29
    invoke-direct {p1, p2, p3}, Lcom/baidu/mobads/sdk/internal/concrete/ViewPager2Delegate;-><init>(Lcom/baidu/mobads/sdk/api/IAdInterListener;Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    return-object p1

    .line 33
    :cond_0
    const-string v0, "RVAdapter"

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    new-instance p1, Lcom/baidu/mobads/sdk/internal/concrete/RVAdapterDelegate;

    .line 42
    .line 43
    invoke-direct {p1, p2}, Lcom/baidu/mobads/sdk/internal/concrete/RVAdapterDelegate;-><init>(Lcom/baidu/mobads/sdk/api/IAdInterListener;)V

    .line 44
    .line 45
    .line 46
    return-object p1

    .line 47
    :cond_1
    const-string v0, "RVViewHolder"

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    new-array v0, v1, [Ljava/lang/Class;

    .line 56
    .line 57
    const-class v1, Landroid/view/View;

    .line 58
    .line 59
    aput-object v1, v0, v2

    .line 60
    .line 61
    invoke-static {p3, v0}, Lcom/baidu/mobads/sdk/internal/a/c;->a([Ljava/lang/Object;[Ljava/lang/Class;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    new-instance p1, Lcom/baidu/mobads/sdk/internal/concrete/RVViewHolderDelegate;

    .line 68
    .line 69
    aget-object p3, p3, v2

    .line 70
    .line 71
    check-cast p3, Landroid/view/View;

    .line 72
    .line 73
    invoke-direct {p1, p2, p3}, Lcom/baidu/mobads/sdk/internal/concrete/RVViewHolderDelegate;-><init>(Lcom/baidu/mobads/sdk/api/IAdInterListener;Landroid/view/View;)V

    .line 74
    .line 75
    .line 76
    return-object p1

    .line 77
    :cond_2
    const-string v0, "ViewCompat"

    .line 78
    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_3

    .line 84
    .line 85
    new-instance p1, Lcom/baidu/mobads/sdk/internal/concrete/ViewCompatDelegate;

    .line 86
    .line 87
    invoke-direct {p1, p2}, Lcom/baidu/mobads/sdk/internal/concrete/ViewCompatDelegate;-><init>(Lcom/baidu/mobads/sdk/api/IAdInterListener;)V

    .line 88
    .line 89
    .line 90
    return-object p1

    .line 91
    :cond_3
    const-string v0, "Fragment"

    .line 92
    .line 93
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_4

    .line 98
    .line 99
    new-instance p1, Lcom/baidu/mobads/sdk/internal/concrete/FragmentDelegate;

    .line 100
    .line 101
    invoke-direct {p1}, Lcom/baidu/mobads/sdk/internal/concrete/FragmentDelegate;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, p2}, Lcom/baidu/mobads/sdk/internal/concrete/FragmentDelegate;->setDispatcher(Lcom/baidu/mobads/sdk/api/IAdInterListener;)Lcom/baidu/mobads/sdk/internal/concrete/FragmentDelegate;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    return-object p1

    .line 109
    :cond_4
    const-string v0, "FragmentV4"

    .line 110
    .line 111
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_5

    .line 116
    .line 117
    new-instance p1, Lcom/baidu/mobads/sdk/internal/concrete/FragmentV4Delegate;

    .line 118
    .line 119
    invoke-direct {p1}, Lcom/baidu/mobads/sdk/internal/concrete/FragmentV4Delegate;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, p2}, Lcom/baidu/mobads/sdk/internal/concrete/FragmentV4Delegate;->setDispatcher(Lcom/baidu/mobads/sdk/api/IAdInterListener;)Lcom/baidu/mobads/sdk/internal/concrete/FragmentV4Delegate;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    return-object p1

    .line 127
    :cond_5
    const-string v0, "RLRecyclerView"

    .line 128
    .line 129
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    if-eqz p1, :cond_6

    .line 134
    .line 135
    new-instance p1, Lcom/baidu/mobads/sdk/internal/concrete/RLRecyclerViewDelegate;

    .line 136
    .line 137
    invoke-direct {p1, p2, p3}, Lcom/baidu/mobads/sdk/internal/concrete/RLRecyclerViewDelegate;-><init>(Lcom/baidu/mobads/sdk/api/IAdInterListener;[Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    return-object p1

    .line 141
    :cond_6
    const/4 p1, 0x0

    .line 142
    return-object p1
.end method


# virtual methods
.method public run(Lcom/baidu/mobads/sdk/api/IOAdEvent;)V
    .locals 6

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    :try_start_0
    const-string v0, "p_e"

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/IOAdEvent;->getType()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_2

    .line 16
    .line 17
    :cond_0
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/IOAdEvent;->getData()Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_4

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const-string v0, "e_t"

    .line 31
    .line 32
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "e_n"

    .line 37
    .line 38
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v2, "e_a"

    .line 43
    .line 44
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    instance-of v3, v2, [Ljava/lang/Object;

    .line 49
    .line 50
    if-eqz v3, :cond_2

    .line 51
    .line 52
    move-object v3, v2

    .line 53
    check-cast v3, [Ljava/lang/Object;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    const/4 v3, 0x0

    .line 57
    :goto_0
    instance-of v4, v1, Ljava/lang/String;

    .line 58
    .line 59
    if-eqz v4, :cond_5

    .line 60
    .line 61
    instance-of v4, v0, Ljava/lang/String;

    .line 62
    .line 63
    if-eqz v4, :cond_5

    .line 64
    .line 65
    const-string v4, "p_init"

    .line 66
    .line 67
    move-object v5, v1

    .line 68
    check-cast v5, Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-eqz v4, :cond_3

    .line 75
    .line 76
    const-string v1, "e_d"

    .line 77
    .line 78
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    instance-of v2, v1, Lcom/baidu/mobads/sdk/api/IAdInterListener;

    .line 83
    .line 84
    if-eqz v2, :cond_5

    .line 85
    .line 86
    check-cast v0, Ljava/lang/String;

    .line 87
    .line 88
    check-cast v1, Lcom/baidu/mobads/sdk/api/IAdInterListener;

    .line 89
    .line 90
    invoke-direct {p0, v0, v1, v3}, Lcom/baidu/mobads/sdk/internal/a/c$a;->a(Ljava/lang/String;Lcom/baidu/mobads/sdk/api/IAdInterListener;[Ljava/lang/Object;)Lcom/baidu/mobads/sdk/internal/a/a;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    if-eqz v0, :cond_5

    .line 95
    .line 96
    const-string v1, "e_r"

    .line 97
    .line 98
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_3
    const-string p1, "p_set_class"

    .line 103
    .line 104
    check-cast v1, Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-eqz p1, :cond_5

    .line 111
    .line 112
    instance-of p1, v2, Ljava/util/Map;

    .line 113
    .line 114
    if-eqz p1, :cond_5

    .line 115
    .line 116
    check-cast v2, Ljava/util/Map;

    .line 117
    .line 118
    const-string p1, "ViewPager2"

    .line 119
    .line 120
    const-class v0, Lcom/baidu/mobads/sdk/internal/widget/ViewPager2;

    .line 121
    .line 122
    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    const-string p1, "RVAdapter"

    .line 126
    .line 127
    const-class v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 128
    .line 129
    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    const-string p1, "RVViewHolder"

    .line 133
    .line 134
    const-class v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 135
    .line 136
    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_4
    :goto_1
    return-void

    .line 141
    :catchall_0
    move-exception p1

    .line 142
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/bv;->a()Lcom/baidu/mobads/sdk/internal/bv;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {v0, p1}, Lcom/baidu/mobads/sdk/internal/bv;->b(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :cond_5
    :goto_2
    return-void
.end method
