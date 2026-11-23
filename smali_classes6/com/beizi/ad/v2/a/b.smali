.class public Lcom/beizi/ad/v2/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected A:Z

.field protected B:Z

.field protected C:Z

.field protected D:Z

.field protected E:Z

.field protected F:Landroid/os/Handler;

.field public G:Z

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private K:Z

.field private L:Z

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field protected a:Landroid/content/Context;

.field protected b:Lcom/beizi/ad/internal/b;

.field protected c:Lcom/beizi/ad/internal/d/a;

.field protected d:Z

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Z

.field protected h:Z

.field protected i:Z

.field protected j:Z

.field protected k:Ljava/lang/String;

.field protected l:Ljava/lang/String;

.field protected m:Lcom/beizi/ad/internal/f;

.field protected n:I

.field protected o:I

.field protected p:I

.field protected q:I

.field protected r:Lcom/beizi/ad/internal/a/b;

.field protected s:Z

.field protected t:Z

.field protected u:Z

.field protected v:Z

.field protected w:Lcom/beizi/fusion/events/EventBean;

.field protected x:Z

.field protected y:Ljava/lang/String;

.field protected z:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/beizi/ad/internal/f;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/beizi/ad/v2/a/b;->b:Lcom/beizi/ad/internal/b;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/beizi/ad/v2/a/b;->g:Z

    .line 4
    iput-boolean v0, p0, Lcom/beizi/ad/v2/a/b;->h:Z

    .line 5
    iput-boolean v0, p0, Lcom/beizi/ad/v2/a/b;->i:Z

    .line 6
    iput-boolean v0, p0, Lcom/beizi/ad/v2/a/b;->j:Z

    .line 7
    iput-boolean v0, p0, Lcom/beizi/ad/v2/a/b;->K:Z

    .line 8
    new-instance v0, Lcom/beizi/ad/v2/a/b$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/beizi/ad/v2/a/b$1;-><init>(Lcom/beizi/ad/v2/a/b;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/beizi/ad/v2/a/b;->F:Landroid/os/Handler;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/ad/v2/a/b;->a:Landroid/content/Context;

    .line 10
    iput-object p2, p0, Lcom/beizi/ad/v2/a/b;->m:Lcom/beizi/ad/internal/f;

    .line 11
    new-instance v0, Lcom/beizi/ad/internal/b;

    invoke-direct {v0, p1}, Lcom/beizi/ad/internal/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/beizi/ad/v2/a/b;->b:Lcom/beizi/ad/internal/b;

    .line 12
    invoke-virtual {v0, p2}, Lcom/beizi/ad/internal/b;->a(Lcom/beizi/ad/internal/f;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/beizi/ad/internal/f;)V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/beizi/ad/v2/a/b;->b:Lcom/beizi/ad/internal/b;

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/beizi/ad/v2/a/b;->g:Z

    .line 16
    iput-boolean v0, p0, Lcom/beizi/ad/v2/a/b;->h:Z

    .line 17
    iput-boolean v0, p0, Lcom/beizi/ad/v2/a/b;->i:Z

    .line 18
    iput-boolean v0, p0, Lcom/beizi/ad/v2/a/b;->j:Z

    .line 19
    iput-boolean v0, p0, Lcom/beizi/ad/v2/a/b;->K:Z

    .line 20
    new-instance v0, Lcom/beizi/ad/v2/a/b$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/beizi/ad/v2/a/b$1;-><init>(Lcom/beizi/ad/v2/a/b;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/beizi/ad/v2/a/b;->F:Landroid/os/Handler;

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/ad/v2/a/b;->a:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/beizi/ad/v2/a/b;->y:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/beizi/ad/v2/a/b;->m:Lcom/beizi/ad/internal/f;

    .line 24
    new-instance v0, Lcom/beizi/ad/internal/b;

    invoke-direct {v0, p1}, Lcom/beizi/ad/internal/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/beizi/ad/v2/a/b;->b:Lcom/beizi/ad/internal/b;

    .line 25
    invoke-virtual {v0, p2}, Lcom/beizi/ad/internal/b;->b(Ljava/lang/String;)V

    .line 26
    iget-object p1, p0, Lcom/beizi/ad/v2/a/b;->b:Lcom/beizi/ad/internal/b;

    invoke-virtual {p1, p3}, Lcom/beizi/ad/internal/b;->a(Lcom/beizi/ad/internal/f;)V

    return-void
.end method

.method private C()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/beizi/ad/v2/a/b;->q:I

    .line 2
    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/beizi/ad/v2/a/b;->D()V

    .line 7
    .line 8
    .line 9
    iget v0, p0, Lcom/beizi/ad/v2/a/b;->p:I

    .line 10
    .line 11
    if-gtz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/beizi/ad/v2/a/b;->n()Z

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget-object v1, p0, Lcom/beizi/ad/v2/a/b;->F:Landroid/os/Handler;

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    const/16 v2, 0x10

    .line 22
    .line 23
    int-to-long v3, v0

    .line 24
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 25
    .line 26
    .line 27
    :cond_2
    return-void
.end method

.method private D()V
    .locals 5

    .line 1
    new-instance v0, Lcom/beizi/ad/model/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/beizi/ad/model/b;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/beizi/ad/v2/a/b;->y:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/beizi/ad/model/b;->a(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/beizi/ad/v2/a/b;->J:Ljava/util/Map;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    const-string v2, "orderList"

    .line 16
    .line 17
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/beizi/ad/v2/a/b;->J:Ljava/util/Map;

    .line 24
    .line 25
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    instance-of v2, v1, Ljava/util/List;

    .line 32
    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    check-cast v1, Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-lez v2, :cond_0

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/beizi/ad/model/b;->a(Ljava/util/List;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    iget-object v1, p0, Lcom/beizi/ad/v2/a/b;->J:Ljava/util/Map;

    .line 47
    .line 48
    const-string v2, "interactionType"

    .line 49
    .line 50
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    iget-object v1, p0, Lcom/beizi/ad/v2/a/b;->J:Ljava/util/Map;

    .line 57
    .line 58
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    if-eqz v1, :cond_1

    .line 63
    .line 64
    instance-of v2, v1, Ljava/lang/Integer;

    .line 65
    .line 66
    if-eqz v2, :cond_1

    .line 67
    .line 68
    check-cast v1, Ljava/lang/Integer;

    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    invoke-virtual {v0, v1}, Lcom/beizi/ad/model/b;->a(I)V

    .line 75
    .line 76
    .line 77
    :cond_1
    invoke-static {}, Lcom/beizi/ad/internal/a/a;->a()Lcom/beizi/ad/internal/a/a;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    iget-object v2, p0, Lcom/beizi/ad/v2/a/b;->w:Lcom/beizi/fusion/events/EventBean;

    .line 82
    .line 83
    iget v3, p0, Lcom/beizi/ad/v2/a/b;->q:I

    .line 84
    .line 85
    iget-object v4, p0, Lcom/beizi/ad/v2/a/b;->m:Lcom/beizi/ad/internal/f;

    .line 86
    .line 87
    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/beizi/ad/internal/a/a;->a(Lcom/beizi/fusion/events/EventBean;ILcom/beizi/ad/model/b;Lcom/beizi/ad/internal/f;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method private E()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/beizi/ad/v2/a/b;->v:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/beizi/ad/v2/a/b;->t:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/beizi/ad/v2/a/b;->u:Z

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/beizi/ad/v2/a/b;->v:Z

    .line 16
    .line 17
    invoke-static {}, Lcom/beizi/ad/internal/a/a;->a()Lcom/beizi/ad/internal/a/a;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Lcom/beizi/ad/v2/a/b;->r:Lcom/beizi/ad/internal/a/b;

    .line 22
    .line 23
    iget v3, p0, Lcom/beizi/ad/v2/a/b;->q:I

    .line 24
    .line 25
    invoke-virtual {v1, v2, v0, v3}, Lcom/beizi/ad/internal/a/a;->a(Lcom/beizi/ad/internal/a/b;II)V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method private F()Lcom/beizi/ad/model/b;
    .locals 3

    .line 1
    new-instance v0, Lcom/beizi/ad/model/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/beizi/ad/model/b;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/beizi/ad/v2/a/b;->y:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/beizi/ad/model/b;->a(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/beizi/ad/v2/a/b;->l:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/beizi/ad/model/b;->b(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Lcom/beizi/ad/model/b;->a(Z)V

    .line 18
    .line 19
    .line 20
    iget-boolean v1, p0, Lcom/beizi/ad/v2/a/b;->L:Z

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/beizi/ad/model/b;->b(Z)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/beizi/ad/v2/a/b;->J:Ljava/util/Map;

    .line 26
    .line 27
    if-eqz v1, :cond_4

    .line 28
    .line 29
    const-string v2, "orderList"

    .line 30
    .line 31
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    iget-object v1, p0, Lcom/beizi/ad/v2/a/b;->J:Ljava/util/Map;

    .line 38
    .line 39
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    instance-of v2, v1, Ljava/util/List;

    .line 46
    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    check-cast v1, Ljava/util/List;

    .line 50
    .line 51
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-lez v2, :cond_0

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lcom/beizi/ad/model/b;->a(Ljava/util/List;)V

    .line 58
    .line 59
    .line 60
    :cond_0
    iget-object v1, p0, Lcom/beizi/ad/v2/a/b;->J:Ljava/util/Map;

    .line 61
    .line 62
    const-string v2, "interactionType"

    .line 63
    .line 64
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_1

    .line 69
    .line 70
    iget-object v1, p0, Lcom/beizi/ad/v2/a/b;->J:Ljava/util/Map;

    .line 71
    .line 72
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    if-eqz v1, :cond_1

    .line 77
    .line 78
    instance-of v2, v1, Ljava/lang/Integer;

    .line 79
    .line 80
    if-eqz v2, :cond_1

    .line 81
    .line 82
    check-cast v1, Ljava/lang/Integer;

    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    invoke-virtual {v0, v1}, Lcom/beizi/ad/model/b;->a(I)V

    .line 89
    .line 90
    .line 91
    :cond_1
    iget-object v1, p0, Lcom/beizi/ad/v2/a/b;->J:Ljava/util/Map;

    .line 92
    .line 93
    const-string v2, "bz_user_id"

    .line 94
    .line 95
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_2

    .line 100
    .line 101
    iget-object v1, p0, Lcom/beizi/ad/v2/a/b;->J:Ljava/util/Map;

    .line 102
    .line 103
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    if-eqz v1, :cond_2

    .line 108
    .line 109
    instance-of v2, v1, Ljava/lang/String;

    .line 110
    .line 111
    if-eqz v2, :cond_2

    .line 112
    .line 113
    check-cast v1, Ljava/lang/String;

    .line 114
    .line 115
    iput-object v1, p0, Lcom/beizi/ad/v2/a/b;->M:Ljava/lang/String;

    .line 116
    .line 117
    :cond_2
    iget-object v1, p0, Lcom/beizi/ad/v2/a/b;->J:Ljava/util/Map;

    .line 118
    .line 119
    const-string v2, "bz_user_custom_data"

    .line 120
    .line 121
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-eqz v1, :cond_3

    .line 126
    .line 127
    iget-object v1, p0, Lcom/beizi/ad/v2/a/b;->J:Ljava/util/Map;

    .line 128
    .line 129
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    if-eqz v1, :cond_3

    .line 134
    .line 135
    instance-of v2, v1, Ljava/lang/String;

    .line 136
    .line 137
    if-eqz v2, :cond_3

    .line 138
    .line 139
    check-cast v1, Ljava/lang/String;

    .line 140
    .line 141
    iput-object v1, p0, Lcom/beizi/ad/v2/a/b;->N:Ljava/lang/String;

    .line 142
    .line 143
    :cond_3
    iget-object v1, p0, Lcom/beizi/ad/v2/a/b;->J:Ljava/util/Map;

    .line 144
    .line 145
    const-string v2, "window_scene"

    .line 146
    .line 147
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-eqz v1, :cond_4

    .line 152
    .line 153
    iget-object v1, p0, Lcom/beizi/ad/v2/a/b;->J:Ljava/util/Map;

    .line 154
    .line 155
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    if-eqz v1, :cond_4

    .line 160
    .line 161
    instance-of v2, v1, Ljava/lang/Boolean;

    .line 162
    .line 163
    if-eqz v2, :cond_4

    .line 164
    .line 165
    check-cast v1, Ljava/lang/Boolean;

    .line 166
    .line 167
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    iput-boolean v1, p0, Lcom/beizi/ad/v2/a/b;->G:Z

    .line 172
    .line 173
    :cond_4
    return-object v0
.end method

.method private G()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/beizi/ad/lance/a/c;->b()Lcom/beizi/ad/lance/a/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/beizi/ad/lance/a/c;->d()Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/beizi/ad/v2/a/b$3;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/beizi/ad/v2/a/b$3;-><init>(Lcom/beizi/ad/v2/a/b;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private H()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/v2/a/b;->l:Ljava/lang/String;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/beizi/ad/v2/a/b;->k:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/beizi/ad/v2/a/b;->b:Lcom/beizi/ad/internal/b;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lcom/beizi/ad/internal/b;->a(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/beizi/ad/v2/a/b;)Lcom/beizi/ad/model/b;
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/beizi/ad/v2/a/b;->F()Lcom/beizi/ad/model/b;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/beizi/ad/v2/a/b;ZLjava/lang/String;Lcom/beizi/ad/internal/a/b;Lcom/beizi/ad/internal/d/a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/beizi/ad/v2/a/b;->a(ZLjava/lang/String;Lcom/beizi/ad/internal/a/b;Lcom/beizi/ad/internal/d/a;)V

    return-void
.end method

.method private declared-synchronized a(ZLjava/lang/String;Lcom/beizi/ad/internal/a/b;Lcom/beizi/ad/internal/d/a;)V
    .locals 2

    monitor-enter p0

    .line 36
    :try_start_0
    iget-boolean v0, p0, Lcom/beizi/ad/v2/a/b;->A:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p0, p4, p2}, Lcom/beizi/ad/v2/a/b;->a(Lcom/beizi/ad/internal/d/a;Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :cond_0
    iget-boolean p1, p0, Lcom/beizi/ad/v2/a/b;->s:Z

    if-eqz p1, :cond_1

    .line 39
    invoke-static {}, Lcom/beizi/ad/internal/a/a;->a()Lcom/beizi/ad/internal/a/a;

    move-result-object p1

    iget p2, p0, Lcom/beizi/ad/v2/a/b;->q:I

    invoke-virtual {p1, p3, v1, p2}, Lcom/beizi/ad/internal/a/a;->a(Lcom/beizi/ad/internal/a/b;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 41
    :cond_2
    :try_start_1
    iput-boolean v1, p0, Lcom/beizi/ad/v2/a/b;->A:Z

    .line 42
    iput-object p4, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    if-eqz p1, :cond_3

    .line 43
    iput-boolean v1, p0, Lcom/beizi/ad/v2/a/b;->s:Z

    goto :goto_1

    .line 44
    :cond_3
    iput-boolean v1, p0, Lcom/beizi/ad/v2/a/b;->t:Z

    if-eqz p3, :cond_4

    .line 45
    invoke-virtual {p3}, Lcom/beizi/ad/internal/a/b;->d()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/beizi/ad/v2/a/b;->l:Ljava/lang/String;

    .line 46
    iget-object p2, p0, Lcom/beizi/ad/v2/a/b;->b:Lcom/beizi/ad/internal/b;

    if-eqz p2, :cond_4

    .line 47
    invoke-virtual {p2, p1}, Lcom/beizi/ad/internal/b;->a(Ljava/lang/String;)V

    .line 48
    :cond_4
    iput-object p3, p0, Lcom/beizi/ad/v2/a/b;->r:Lcom/beizi/ad/internal/a/b;

    .line 49
    iget-object p1, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    if-eqz p1, :cond_5

    .line 50
    invoke-virtual {p1, v1}, Lcom/beizi/ad/internal/d/a;->c(Z)V

    .line 51
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/beizi/ad/v2/a/b;->G()V

    .line 52
    invoke-virtual {p0, p4}, Lcom/beizi/ad/v2/a/b;->a(Lcom/beizi/ad/internal/d/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(Lcom/beizi/ad/internal/d/a;Lcom/beizi/ad/internal/a/b;)Z
    .locals 3

    const-string v0, "orderList"

    const/4 v1, 0x1

    .line 25
    :try_start_0
    iget-object v2, p0, Lcom/beizi/ad/v2/a/b;->J:Ljava/util/Map;

    if-nez v2, :cond_0

    return v1

    .line 26
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 27
    :cond_1
    iget-object v2, p0, Lcom/beizi/ad/v2/a/b;->J:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 28
    :cond_2
    instance-of v2, v0, Ljava/util/List;

    if-nez v2, :cond_3

    return v1

    .line 29
    :cond_3
    check-cast v0, Ljava/util/List;

    .line 30
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    return v1

    .line 31
    :cond_4
    invoke-virtual {p1}, Lcom/beizi/ad/internal/d/a;->T()Ljava/lang/String;

    move-result-object p1

    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    return v1

    .line 33
    :cond_5
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    return v1

    .line 34
    :cond_6
    invoke-static {}, Lcom/beizi/ad/internal/a/a;->a()Lcom/beizi/ad/internal/a/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/beizi/ad/internal/a/a;->a(Lcom/beizi/ad/internal/a/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/v2/a/b;->M:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public B()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/v2/a/b;->N:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public a()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/beizi/ad/v2/a/b;->z:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/beizi/ad/v2/a/b;->o:I

    return-void
.end method

.method public a(Lcom/beizi/ad/internal/d/a;)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Lcom/beizi/ad/internal/d/a;Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_1

    .line 54
    invoke-virtual {p1}, Lcom/beizi/ad/internal/d/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    invoke-static {}, Lcom/beizi/ad/internal/a/a;->a()Lcom/beizi/ad/internal/a/a;

    move-result-object v1

    iget-object v4, p0, Lcom/beizi/ad/v2/a/b;->k:Ljava/lang/String;

    iget-object v5, p0, Lcom/beizi/ad/v2/a/b;->y:Ljava/lang/String;

    iget-object v6, p0, Lcom/beizi/ad/v2/a/b;->m:Lcom/beizi/ad/internal/f;

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/beizi/ad/internal/a/a;->a(Lcom/beizi/ad/internal/d/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/beizi/ad/internal/f;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/beizi/fusion/events/EventBean;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/beizi/ad/v2/a/b;->w:Lcom/beizi/fusion/events/EventBean;

    return-void
.end method

.method public a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/beizi/ad/v2/a/b;->z:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 6
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getCacheNum()I

    move-result v0

    iput v0, p0, Lcom/beizi/ad/v2/a/b;->q:I

    if-lez v0, :cond_3

    .line 7
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getWaitTime()I

    move-result v0

    .line 8
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getLastTime()I

    move-result v1

    const/16 v2, 0x64

    if-gtz v1, :cond_1

    const/16 v1, 0x64

    :cond_1
    if-ltz v0, :cond_2

    .line 9
    iget v3, p0, Lcom/beizi/ad/v2/a/b;->o:I

    sub-int/2addr v3, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/beizi/ad/v2/a/b;->p:I

    goto :goto_0

    .line 10
    :cond_2
    iget v0, p0, Lcom/beizi/ad/v2/a/b;->o:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/beizi/ad/v2/a/b;->p:I

    .line 11
    :goto_0
    iget v0, p0, Lcom/beizi/ad/v2/a/b;->p:I

    if-gtz v0, :cond_3

    .line 12
    iput v2, p0, Lcom/beizi/ad/v2/a/b;->p:I

    .line 13
    :cond_3
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getIsImageSpeed()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/beizi/ad/v2/a/b;->B:Z

    .line 14
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getIsHideInteraction()I

    move-result v0

    if-ne v0, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/beizi/ad/v2/a/b;->C:Z

    .line 15
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getIsPlaceHolder()I

    move-result v0

    if-ne v0, v2, :cond_6

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lcom/beizi/ad/v2/a/b;->D:Z

    .line 16
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getIsAnimation()I

    move-result p1

    if-ne p1, v2, :cond_7

    const/4 v1, 0x1

    :cond_7
    iput-boolean v1, p0, Lcom/beizi/ad/v2/a/b;->E:Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 19
    iput-object p1, p0, Lcom/beizi/ad/v2/a/b;->y:Ljava/lang/String;

    .line 20
    iget-object v0, p0, Lcom/beizi/ad/v2/a/b;->b:Lcom/beizi/ad/internal/b;

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {v0, p1}, Lcom/beizi/ad/internal/b;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v0, p1}, Lcom/beizi/ad/internal/d/a;->a(Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/beizi/ad/v2/a/b;->d:Z

    return-void
.end method

.method public a(Lcom/beizi/ad/model/i$a;)Z
    .locals 4

    .line 56
    iget-object v0, p0, Lcom/beizi/ad/v2/a/b;->m:Lcom/beizi/ad/internal/f;

    sget-object v1, Lcom/beizi/ad/internal/f;->b:Lcom/beizi/ad/internal/f;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_7

    sget-object v1, Lcom/beizi/ad/internal/f;->c:Lcom/beizi/ad/internal/f;

    if-eq v0, v1, :cond_7

    sget-object v1, Lcom/beizi/ad/internal/f;->a:Lcom/beizi/ad/internal/f;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    sget-object v1, Lcom/beizi/ad/internal/f;->g:Lcom/beizi/ad/internal/f;

    if-ne v0, v1, :cond_2

    .line 58
    sget-object v0, Lcom/beizi/ad/model/i$a;->g:Lcom/beizi/ad/model/i$a;

    if-eq p1, v0, :cond_1

    return v3

    :cond_1
    return v2

    .line 59
    :cond_2
    sget-object v1, Lcom/beizi/ad/internal/f;->e:Lcom/beizi/ad/internal/f;

    if-ne v0, v1, :cond_4

    .line 60
    sget-object v0, Lcom/beizi/ad/model/i$a;->d:Lcom/beizi/ad/model/i$a;

    if-eq p1, v0, :cond_3

    return v3

    :cond_3
    return v2

    .line 61
    :cond_4
    sget-object v1, Lcom/beizi/ad/internal/f;->f:Lcom/beizi/ad/internal/f;

    if-ne v0, v1, :cond_6

    .line 62
    sget-object v0, Lcom/beizi/ad/model/i$a;->b:Lcom/beizi/ad/model/i$a;

    if-eq p1, v0, :cond_5

    return v3

    :cond_5
    return v2

    :cond_6
    return v3

    .line 63
    :cond_7
    :goto_0
    sget-object v0, Lcom/beizi/ad/model/i$a;->c:Lcom/beizi/ad/model/i$a;

    if-eq p1, v0, :cond_8

    return v3

    :cond_8
    return v2
.end method

.method public b()V
    .locals 6

    .line 2
    iget-boolean v0, p0, Lcom/beizi/ad/v2/a/b;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/beizi/ad/v2/a/b;->h:Z

    .line 4
    iget-object v1, p0, Lcom/beizi/ad/v2/a/b;->H:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_3

    .line 5
    new-instance v1, Lcom/beizi/ad/internal/d/a;

    iget-object v3, p0, Lcom/beizi/ad/v2/a/b;->H:Ljava/lang/String;

    iget-object v4, p0, Lcom/beizi/ad/v2/a/b;->b:Lcom/beizi/ad/internal/b;

    .line 6
    invoke-virtual {v4}, Lcom/beizi/ad/internal/b;->a()Lcom/beizi/ad/internal/f;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5, v4}, Lcom/beizi/ad/internal/d/a;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/beizi/ad/internal/f;)V

    .line 7
    invoke-virtual {v1}, Lcom/beizi/ad/internal/d/a;->d()Z

    move-result v3

    if-nez v3, :cond_1

    .line 8
    invoke-virtual {p0, v2}, Lcom/beizi/ad/v2/a/b;->b(I)V

    return-void

    .line 9
    :cond_1
    invoke-virtual {v1}, Lcom/beizi/ad/internal/d/a;->i()Lcom/beizi/ad/model/i$a;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/beizi/ad/v2/a/b;->a(Lcom/beizi/ad/model/i$a;)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v0, 0xc

    .line 10
    invoke-virtual {p0, v0}, Lcom/beizi/ad/v2/a/b;->b(I)V

    return-void

    .line 11
    :cond_2
    invoke-virtual {v1}, Lcom/beizi/ad/internal/d/a;->M()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/beizi/ad/v2/a/b;->l:Ljava/lang/String;

    .line 12
    invoke-virtual {v1}, Lcom/beizi/ad/internal/d/a;->I()Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-direct {p0, v0, v2, v5, v1}, Lcom/beizi/ad/v2/a/b;->a(ZLjava/lang/String;Lcom/beizi/ad/internal/a/b;Lcom/beizi/ad/internal/d/a;)V

    return-void

    :cond_3
    const-string v0, "S2S"

    .line 14
    iget-object v1, p0, Lcom/beizi/ad/v2/a/b;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {p0, v2}, Lcom/beizi/ad/v2/a/b;->b(I)V

    return-void

    .line 16
    :cond_4
    invoke-direct {p0}, Lcom/beizi/ad/v2/a/b;->C()V

    .line 17
    invoke-static {}, Lcom/beizi/ad/lance/a/c;->b()Lcom/beizi/ad/lance/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beizi/ad/lance/a/c;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/beizi/ad/v2/a/b$2;

    invoke-direct {v1, p0}, Lcom/beizi/ad/v2/a/b$2;-><init>(Lcom/beizi/ad/v2/a/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/beizi/ad/v2/a/b;->e:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    invoke-direct {p0}, Lcom/beizi/ad/v2/a/b;->E()V

    .line 21
    iget-object v0, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    invoke-virtual {v0, p1}, Lcom/beizi/ad/internal/d/a;->b(Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/beizi/ad/v2/a/b;->L:Z

    return-void
.end method

.method public c()V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/beizi/ad/v2/a/b;->f:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 3
    iput-object p1, p0, Lcom/beizi/ad/v2/a/b;->J:Ljava/util/Map;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/v2/a/b;->y:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/beizi/ad/v2/a/b;->H:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/v2/a/b;->l:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/beizi/ad/v2/a/b;->I:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/beizi/ad/internal/e/n;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/beizi/ad/v2/a/b;->l:Ljava/lang/String;

    .line 4
    invoke-direct {p0}, Lcom/beizi/ad/v2/a/b;->H()V

    return-void

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/beizi/ad/v2/a/b;->l:Ljava/lang/String;

    .line 6
    invoke-direct {p0}, Lcom/beizi/ad/v2/a/b;->H()V

    return-void
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/beizi/ad/v2/a/b;->x:Z

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/v2/a/b;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/v2/a/b;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/beizi/ad/v2/a/b;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/beizi/ad/v2/a/b;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public k()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/ad/internal/d/a;->C()Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/ad/internal/d/a;->D()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public m()Lcom/beizi/ad/internal/d/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    .line 2
    .line 3
    return-object v0
.end method

.method protected n()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/beizi/ad/v2/a/b;->K:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/beizi/ad/v2/a/b;->K:Z

    .line 9
    .line 10
    iget v2, p0, Lcom/beizi/ad/v2/a/b;->q:I

    .line 11
    .line 12
    if-gtz v2, :cond_1

    .line 13
    .line 14
    return v1

    .line 15
    :cond_1
    iget-boolean v2, p0, Lcom/beizi/ad/v2/a/b;->s:Z

    .line 16
    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    return v1

    .line 20
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/beizi/ad/internal/a/a;->a()Lcom/beizi/ad/internal/a/a;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {p0}, Lcom/beizi/ad/v2/a/b;->d()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v2, v3}, Lcom/beizi/ad/internal/a/a;->b(Ljava/lang/String;)Lcom/beizi/ad/internal/a/b;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    if-nez v2, :cond_3

    .line 33
    .line 34
    return v1

    .line 35
    :cond_3
    invoke-static {}, Lcom/beizi/ad/internal/a/a;->a()Lcom/beizi/ad/internal/a/a;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    iget-object v4, p0, Lcom/beizi/ad/v2/a/b;->m:Lcom/beizi/ad/internal/f;

    .line 40
    .line 41
    invoke-virtual {v3, v2, v4}, Lcom/beizi/ad/internal/a/a;->a(Lcom/beizi/ad/internal/a/b;Lcom/beizi/ad/internal/f;)Lcom/beizi/ad/internal/d/a;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    if-nez v3, :cond_4

    .line 46
    .line 47
    return v1

    .line 48
    :cond_4
    iget-boolean v4, p0, Lcom/beizi/ad/v2/a/b;->s:Z

    .line 49
    .line 50
    if-eqz v4, :cond_5

    .line 51
    .line 52
    invoke-static {}, Lcom/beizi/ad/internal/a/a;->a()Lcom/beizi/ad/internal/a/a;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    iget v4, p0, Lcom/beizi/ad/v2/a/b;->q:I

    .line 57
    .line 58
    invoke-virtual {v3, v2, v0, v4}, Lcom/beizi/ad/internal/a/a;->a(Lcom/beizi/ad/internal/a/b;II)V

    .line 59
    .line 60
    .line 61
    return v1

    .line 62
    :cond_5
    invoke-direct {p0, v3, v2}, Lcom/beizi/ad/v2/a/b;->a(Lcom/beizi/ad/internal/d/a;Lcom/beizi/ad/internal/a/b;)Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-nez v4, :cond_6

    .line 67
    .line 68
    return v1

    .line 69
    :cond_6
    const/4 v4, 0x0

    .line 70
    invoke-direct {p0, v1, v4, v2, v3}, Lcom/beizi/ad/v2/a/b;->a(ZLjava/lang/String;Lcom/beizi/ad/internal/a/b;Lcom/beizi/ad/internal/d/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    .line 73
    return v0

    .line 74
    :catchall_0
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    .line 77
    .line 78
    return v1
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/beizi/ad/v2/a/b;->t:Z

    .line 2
    .line 3
    return v0
.end method

.method public p()J
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    iget-boolean v2, p0, Lcom/beizi/ad/v2/a/b;->t:Z

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    iget-object v2, p0, Lcom/beizi/ad/v2/a/b;->r:Lcom/beizi/ad/internal/a/b;

    .line 9
    .line 10
    if-nez v2, :cond_1

    .line 11
    .line 12
    return-wide v0

    .line 13
    :cond_1
    invoke-virtual {v2}, Lcom/beizi/ad/internal/a/b;->b()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return-wide v0

    .line 18
    :catch_0
    move-exception v2

    .line 19
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    .line 21
    .line 22
    return-wide v0
.end method

.method public q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/beizi/ad/internal/d/a;->d(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/beizi/ad/internal/d/a;->ag()V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-direct {p0}, Lcom/beizi/ad/v2/a/b;->E()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/beizi/ad/v2/a/b;->r()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public r()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/v2/a/b;->F:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x10

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public s()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/beizi/ad/v2/a/b;->n:I

    .line 2
    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x5

    .line 6
    :cond_0
    return v0
.end method

.method public t()Lorg/json/JSONObject;
    .locals 9

    .line 1
    const-string v0, "materialInfo"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/beizi/ad/v2/a/b;->J:Ljava/util/Map;

    .line 5
    .line 6
    if-nez v2, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_1
    iget-object v2, p0, Lcom/beizi/ad/v2/a/b;->J:Ljava/util/Map;

    .line 17
    .line 18
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    instance-of v3, v2, Ljava/lang/Integer;

    .line 23
    .line 24
    if-nez v3, :cond_2

    .line 25
    .line 26
    return-object v1

    .line 27
    :cond_2
    check-cast v2, Ljava/lang/Integer;

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_3

    .line 34
    .line 35
    return-object v1

    .line 36
    :cond_3
    const/4 v3, 0x1

    .line 37
    const/16 v4, 0x65

    .line 38
    .line 39
    const/16 v5, 0x3e9

    .line 40
    .line 41
    if-eq v2, v3, :cond_4

    .line 42
    .line 43
    if-eq v2, v4, :cond_4

    .line 44
    .line 45
    if-eq v2, v5, :cond_4

    .line 46
    .line 47
    return-object v1

    .line 48
    :cond_4
    new-instance v6, Lorg/json/JSONObject;

    .line 49
    .line 50
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 51
    .line 52
    .line 53
    iget-object v7, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    .line 54
    .line 55
    if-eqz v7, :cond_15

    .line 56
    .line 57
    new-instance v7, Lorg/json/JSONObject;

    .line 58
    .line 59
    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 60
    .line 61
    .line 62
    if-eq v2, v3, :cond_5

    .line 63
    .line 64
    if-eq v2, v4, :cond_5

    .line 65
    .line 66
    if-ne v2, v5, :cond_d

    .line 67
    .line 68
    :cond_5
    iget-object v3, p0, Lcom/beizi/ad/v2/a/b;->m:Lcom/beizi/ad/internal/f;

    .line 69
    .line 70
    sget-object v8, Lcom/beizi/ad/internal/f;->b:Lcom/beizi/ad/internal/f;

    .line 71
    .line 72
    if-ne v3, v8, :cond_6

    .line 73
    .line 74
    iget-object v3, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    .line 75
    .line 76
    invoke-virtual {v3}, Lcom/beizi/ad/internal/d/a;->E()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    goto :goto_0

    .line 81
    :cond_6
    sget-object v8, Lcom/beizi/ad/internal/f;->g:Lcom/beizi/ad/internal/f;

    .line 82
    .line 83
    if-ne v3, v8, :cond_7

    .line 84
    .line 85
    iget-object v3, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    .line 86
    .line 87
    invoke-virtual {v3}, Lcom/beizi/ad/internal/d/a;->E()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    goto :goto_0

    .line 92
    :cond_7
    sget-object v8, Lcom/beizi/ad/internal/f;->e:Lcom/beizi/ad/internal/f;

    .line 93
    .line 94
    if-ne v3, v8, :cond_8

    .line 95
    .line 96
    iget-object v3, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    .line 97
    .line 98
    invoke-virtual {v3}, Lcom/beizi/ad/internal/d/a;->x()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    goto :goto_0

    .line 103
    :cond_8
    sget-object v8, Lcom/beizi/ad/internal/f;->f:Lcom/beizi/ad/internal/f;

    .line 104
    .line 105
    if-ne v3, v8, :cond_9

    .line 106
    .line 107
    iget-object v3, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    .line 108
    .line 109
    invoke-virtual {v3}, Lcom/beizi/ad/internal/d/a;->J()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    goto :goto_0

    .line 114
    :cond_9
    sget-object v8, Lcom/beizi/ad/internal/f;->c:Lcom/beizi/ad/internal/f;

    .line 115
    .line 116
    if-ne v3, v8, :cond_a

    .line 117
    .line 118
    iget-object v3, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    .line 119
    .line 120
    invoke-virtual {v3}, Lcom/beizi/ad/internal/d/a;->G()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    goto :goto_0

    .line 125
    :cond_a
    move-object v3, v1

    .line 126
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 127
    .line 128
    .line 129
    move-result v8

    .line 130
    if-nez v8, :cond_b

    .line 131
    .line 132
    const-string v8, "http"

    .line 133
    .line 134
    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 135
    .line 136
    .line 137
    move-result v8

    .line 138
    if-eqz v8, :cond_b

    .line 139
    .line 140
    const-string v8, "imageUrl"

    .line 141
    .line 142
    invoke-virtual {v7, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    .line 144
    .line 145
    new-instance v8, Lorg/json/JSONArray;

    .line 146
    .line 147
    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 151
    .line 152
    .line 153
    const-string v3, "imageUrls"

    .line 154
    .line 155
    invoke-virtual {v7, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    .line 157
    .line 158
    :cond_b
    iget-object v3, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    .line 159
    .line 160
    invoke-virtual {v3}, Lcom/beizi/ad/internal/d/a;->y()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 165
    .line 166
    .line 167
    move-result v8

    .line 168
    if-nez v8, :cond_c

    .line 169
    .line 170
    const-string v8, "videoUrl"

    .line 171
    .line 172
    invoke-virtual {v7, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    .line 174
    .line 175
    :cond_c
    iget-object v3, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    .line 176
    .line 177
    invoke-virtual {v3}, Lcom/beizi/ad/internal/d/a;->U()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 182
    .line 183
    .line 184
    move-result v8

    .line 185
    if-nez v8, :cond_d

    .line 186
    .line 187
    const-string v8, "crid"

    .line 188
    .line 189
    invoke-virtual {v7, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    .line 191
    .line 192
    :cond_d
    if-eq v2, v4, :cond_e

    .line 193
    .line 194
    if-ne v2, v5, :cond_13

    .line 195
    .line 196
    :cond_e
    iget-object v3, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    .line 197
    .line 198
    invoke-virtual {v3}, Lcom/beizi/ad/internal/d/a;->O()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 203
    .line 204
    .line 205
    move-result v4

    .line 206
    if-nez v4, :cond_f

    .line 207
    .line 208
    const-string v4, "deeplinkUrl"

    .line 209
    .line 210
    invoke-virtual {v7, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    .line 212
    .line 213
    :cond_f
    iget-object v3, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    .line 214
    .line 215
    invoke-virtual {v3}, Lcom/beizi/ad/internal/d/a;->P()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 220
    .line 221
    .line 222
    move-result v4

    .line 223
    if-nez v4, :cond_10

    .line 224
    .line 225
    const-string v4, "landingPageUrl"

    .line 226
    .line 227
    invoke-virtual {v7, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    .line 229
    .line 230
    :cond_10
    iget-object v3, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    .line 231
    .line 232
    invoke-virtual {v3}, Lcom/beizi/ad/internal/d/a;->Q()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 237
    .line 238
    .line 239
    move-result v4

    .line 240
    if-nez v4, :cond_11

    .line 241
    .line 242
    const-string v4, "downloadUrl"

    .line 243
    .line 244
    invoke-virtual {v7, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    .line 246
    .line 247
    :cond_11
    iget-object v3, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    .line 248
    .line 249
    invoke-virtual {v3}, Lcom/beizi/ad/internal/d/a;->R()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 254
    .line 255
    .line 256
    move-result v4

    .line 257
    if-nez v4, :cond_12

    .line 258
    .line 259
    const-string v4, "miniProgramId"

    .line 260
    .line 261
    invoke-virtual {v7, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    .line 263
    .line 264
    :cond_12
    iget-object v3, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    .line 265
    .line 266
    invoke-virtual {v3}, Lcom/beizi/ad/internal/d/a;->S()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 271
    .line 272
    .line 273
    move-result v4

    .line 274
    if-nez v4, :cond_13

    .line 275
    .line 276
    const-string v4, "miniProgramPath"

    .line 277
    .line 278
    invoke-virtual {v7, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 279
    .line 280
    .line 281
    :cond_13
    if-ne v2, v5, :cond_14

    .line 282
    .line 283
    iget-object v2, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    .line 284
    .line 285
    invoke-virtual {v2}, Lcom/beizi/ad/internal/d/a;->T()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 290
    .line 291
    .line 292
    move-result v3

    .line 293
    if-nez v3, :cond_14

    .line 294
    .line 295
    const-string v3, "orderId"

    .line 296
    .line 297
    invoke-virtual {v7, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 298
    .line 299
    .line 300
    :cond_14
    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    .line 302
    .line 303
    :cond_15
    return-object v6

    .line 304
    :catch_0
    move-exception v0

    .line 305
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 306
    .line 307
    .line 308
    return-object v1
.end method

.method public u()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/ad/internal/d/a;->X()Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public v()Lcom/beizi/ad/model/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/ad/internal/d/a;->Y()Lcom/beizi/ad/model/l;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public w()Lcom/beizi/ad/model/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/ad/internal/d/a;->aa()Lcom/beizi/ad/model/m;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public x()Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v1}, Lcom/beizi/ad/internal/d/a;->ad()Z

    .line 8
    .line 9
    .line 10
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :catch_0
    return v0
.end method

.method public y()Lcom/beizi/ad/model/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/ad/internal/d/a;->ae()Lcom/beizi/ad/model/n;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public z()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/beizi/ad/model/e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/ad/internal/d/a;->af()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
