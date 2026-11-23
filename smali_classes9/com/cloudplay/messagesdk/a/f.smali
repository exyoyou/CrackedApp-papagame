.class public Lcom/cloudplay/messagesdk/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloudplay/messagesdk/a/h;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/cloudplay/messagesdk/listener/ConfigObserver;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloudplay/messagesdk/entity/FileObserverBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/cloudplay/messagesdk/listener/ConfigObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloudplay/messagesdk/entity/FileObserverBean;",
            ">;",
            "Lcom/cloudplay/messagesdk/listener/ConfigObserver;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/cloudplay/messagesdk/a/f;->b:Lcom/cloudplay/messagesdk/listener/ConfigObserver;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloudplay/messagesdk/a/f;->c:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/cloudplay/messagesdk/a/f;->a:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/cloudplay/messagesdk/a/f;->c:Ljava/util/List;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/cloudplay/messagesdk/a/f;->a:Ljava/util/List;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/cloudplay/messagesdk/a/f;->c:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/cloudplay/messagesdk/entity/FileObserverBean;

    .line 34
    .line 35
    new-instance v2, Lcom/cloudplay/messagesdk/a/h;

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/cloudplay/messagesdk/entity/FileObserverBean;->getPath()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v1}, Lcom/cloudplay/messagesdk/entity/FileObserverBean;->getMask()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    invoke-virtual {v1}, Lcom/cloudplay/messagesdk/entity/FileObserverBean;->getFilters()Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-object v5, p0, Lcom/cloudplay/messagesdk/a/f;->b:Lcom/cloudplay/messagesdk/listener/ConfigObserver;

    .line 50
    .line 51
    invoke-direct {v2, v3, v4, v1, v5}, Lcom/cloudplay/messagesdk/a/h;-><init>(Ljava/lang/String;ILjava/util/List;Lcom/cloudplay/messagesdk/listener/ConfigObserver;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lcom/cloudplay/messagesdk/a/f;->a:Ljava/util/List;

    .line 58
    .line 59
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    :goto_1
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloudplay/messagesdk/a/f;->a:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/cloudplay/messagesdk/a/f;->a:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-ge v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/cloudplay/messagesdk/a/f;->a:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/cloudplay/messagesdk/a/h;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/os/FileObserver;->stopWatching()V

    .line 23
    .line 24
    .line 25
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/cloudplay/messagesdk/a/f;->a:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/cloudplay/messagesdk/a/f;->a:Ljava/util/List;

    .line 35
    .line 36
    :cond_1
    return-void
.end method
