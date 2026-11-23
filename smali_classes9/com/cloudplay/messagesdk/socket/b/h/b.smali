.class public Lcom/cloudplay/messagesdk/socket/b/h/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:Z

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z

.field private i:I

.field private j:[Ljava/lang/String;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Lcom/cloudplay/messagesdk/socket/websocket/schedulers/MessageSchedulerType;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/cloudplay/messagesdk/socket/websocket/schedulers/MessageSchedulerType;->a:Lcom/cloudplay/messagesdk/socket/websocket/schedulers/MessageSchedulerType;

    iput-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/h/b;->p:Lcom/cloudplay/messagesdk/socket/websocket/schedulers/MessageSchedulerType;

    const/high16 v0, 0x20000

    .line 3
    iput v0, p0, Lcom/cloudplay/messagesdk/socket/b/h/b;->a:I

    .line 4
    iput v0, p0, Lcom/cloudplay/messagesdk/socket/b/h/b;->b:I

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/cloudplay/messagesdk/socket/b/h/b;->c:Z

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcom/cloudplay/messagesdk/socket/b/h/b;->d:Z

    .line 7
    iput v0, p0, Lcom/cloudplay/messagesdk/socket/b/h/b;->e:I

    const/16 v2, 0x1770

    .line 8
    iput v2, p0, Lcom/cloudplay/messagesdk/socket/b/h/b;->f:I

    .line 9
    iput-boolean v1, p0, Lcom/cloudplay/messagesdk/socket/b/h/b;->g:Z

    .line 10
    iput-boolean v1, p0, Lcom/cloudplay/messagesdk/socket/b/h/b;->h:Z

    .line 11
    iput v0, p0, Lcom/cloudplay/messagesdk/socket/b/h/b;->i:I

    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Lcom/cloudplay/messagesdk/socket/b/h/b;->j:[Ljava/lang/String;

    const/16 v1, 0xa

    .line 13
    iput v1, p0, Lcom/cloudplay/messagesdk/socket/b/h/b;->k:I

    const/4 v1, 0x5

    .line 14
    iput v1, p0, Lcom/cloudplay/messagesdk/socket/b/h/b;->l:I

    const/4 v1, 0x3

    .line 15
    iput v1, p0, Lcom/cloudplay/messagesdk/socket/b/h/b;->o:I

    .line 16
    iput v0, p0, Lcom/cloudplay/messagesdk/socket/b/h/b;->m:I

    .line 17
    iput v1, p0, Lcom/cloudplay/messagesdk/socket/b/h/b;->n:I

    return-void
.end method

.method public constructor <init>(Lcom/cloudplay/messagesdk/socket/b/h/b;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-object v0, Lcom/cloudplay/messagesdk/socket/websocket/schedulers/MessageSchedulerType;->a:Lcom/cloudplay/messagesdk/socket/websocket/schedulers/MessageSchedulerType;

    iput-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/h/b;->p:Lcom/cloudplay/messagesdk/socket/websocket/schedulers/MessageSchedulerType;

    .line 20
    iget v0, p1, Lcom/cloudplay/messagesdk/socket/b/h/b;->a:I

    iput v0, p0, Lcom/cloudplay/messagesdk/socket/b/h/b;->a:I

    .line 21
    iget v0, p1, Lcom/cloudplay/messagesdk/socket/b/h/b;->b:I

    iput v0, p0, Lcom/cloudplay/messagesdk/socket/b/h/b;->b:I

    .line 22
    iget-boolean v0, p1, Lcom/cloudplay/messagesdk/socket/b/h/b;->c:Z

    iput-boolean v0, p0, Lcom/cloudplay/messagesdk/socket/b/h/b;->c:Z

    .line 23
    iget-boolean v0, p1, Lcom/cloudplay/messagesdk/socket/b/h/b;->d:Z

    iput-boolean v0, p0, Lcom/cloudplay/messagesdk/socket/b/h/b;->d:Z

    .line 24
    iget v0, p1, Lcom/cloudplay/messagesdk/socket/b/h/b;->e:I

    iput v0, p0, Lcom/cloudplay/messagesdk/socket/b/h/b;->e:I

    .line 25
    iget v0, p1, Lcom/cloudplay/messagesdk/socket/b/h/b;->f:I

    iput v0, p0, Lcom/cloudplay/messagesdk/socket/b/h/b;->f:I

    .line 26
    iget-boolean v0, p1, Lcom/cloudplay/messagesdk/socket/b/h/b;->g:Z

    iput-boolean v0, p0, Lcom/cloudplay/messagesdk/socket/b/h/b;->g:Z

    .line 27
    iget-boolean v0, p1, Lcom/cloudplay/messagesdk/socket/b/h/b;->h:Z

    iput-boolean v0, p0, Lcom/cloudplay/messagesdk/socket/b/h/b;->h:Z

    .line 28
    iget v0, p1, Lcom/cloudplay/messagesdk/socket/b/h/b;->i:I

    iput v0, p0, Lcom/cloudplay/messagesdk/socket/b/h/b;->i:I

    .line 29
    iget-object v0, p1, Lcom/cloudplay/messagesdk/socket/b/h/b;->j:[Ljava/lang/String;

    iput-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/h/b;->j:[Ljava/lang/String;

    .line 30
    iget v0, p1, Lcom/cloudplay/messagesdk/socket/b/h/b;->k:I

    iput v0, p0, Lcom/cloudplay/messagesdk/socket/b/h/b;->k:I

    .line 31
    iget v0, p1, Lcom/cloudplay/messagesdk/socket/b/h/b;->l:I

    iput v0, p0, Lcom/cloudplay/messagesdk/socket/b/h/b;->l:I

    .line 32
    iget v0, p1, Lcom/cloudplay/messagesdk/socket/b/h/b;->o:I

    iput v0, p0, Lcom/cloudplay/messagesdk/socket/b/h/b;->o:I

    .line 33
    iget v0, p1, Lcom/cloudplay/messagesdk/socket/b/h/b;->m:I

    iput v0, p0, Lcom/cloudplay/messagesdk/socket/b/h/b;->m:I

    .line 34
    iget v0, p1, Lcom/cloudplay/messagesdk/socket/b/h/b;->n:I

    iput v0, p0, Lcom/cloudplay/messagesdk/socket/b/h/b;->n:I

    .line 35
    iget-object p1, p1, Lcom/cloudplay/messagesdk/socket/b/h/b;->p:Lcom/cloudplay/messagesdk/socket/websocket/schedulers/MessageSchedulerType;

    iput-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/h/b;->p:Lcom/cloudplay/messagesdk/socket/websocket/schedulers/MessageSchedulerType;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/cloudplay/messagesdk/socket/b/h/b;->k:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/cloudplay/messagesdk/socket/b/h/b;->k:I

    return-void
.end method

.method public a(Lcom/cloudplay/messagesdk/socket/websocket/schedulers/MessageSchedulerType;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/h/b;->p:Lcom/cloudplay/messagesdk/socket/websocket/schedulers/MessageSchedulerType;

    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/h/b;->j:[Ljava/lang/String;

    return-void
.end method

.method public b()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/cloudplay/messagesdk/socket/b/h/b;->l:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloudplay/messagesdk/socket/b/h/b;->l:I

    return-void
.end method

.method public c()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/cloudplay/messagesdk/socket/b/h/b;->m:I

    return v0
.end method

.method public c(I)V
    .locals 0

    if-gtz p1, :cond_0

    return-void

    .line 1
    :cond_0
    iput p1, p0, Lcom/cloudplay/messagesdk/socket/b/h/b;->m:I

    return-void
.end method

.method public d()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/cloudplay/messagesdk/socket/b/h/b;->n:I

    return v0
.end method

.method public d(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloudplay/messagesdk/socket/b/h/b;->i:I

    return-void
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloudplay/messagesdk/socket/b/h/b;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloudplay/messagesdk/socket/b/h/b;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloudplay/messagesdk/socket/b/h/b;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloudplay/messagesdk/socket/b/h/b;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public i()Lcom/cloudplay/messagesdk/socket/websocket/schedulers/MessageSchedulerType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/h/b;->p:Lcom/cloudplay/messagesdk/socket/websocket/schedulers/MessageSchedulerType;

    .line 2
    .line 3
    return-object v0
.end method

.method public j()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloudplay/messagesdk/socket/b/h/b;->o:I

    .line 2
    .line 3
    return v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloudplay/messagesdk/socket/b/h/b;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloudplay/messagesdk/socket/b/h/b;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public m()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/h/b;->j:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloudplay/messagesdk/socket/b/h/b;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloudplay/messagesdk/socket/b/h/b;->g:Z

    .line 2
    .line 3
    return v0
.end method
