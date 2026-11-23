.class public Lcom/cloudplay/messagesdk/entity/FileObserverBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloudplay/messagesdk/entity/ObserverItem;",
            ">;"
        }
    .end annotation
.end field

.field private mask:I

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xfff

    .line 5
    .line 6
    iput v0, p0, Lcom/cloudplay/messagesdk/entity/FileObserverBean;->mask:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloudplay/messagesdk/entity/ObserverItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloudplay/messagesdk/entity/FileObserverBean;->filters:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMask()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloudplay/messagesdk/entity/FileObserverBean;->mask:I

    .line 2
    .line 3
    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloudplay/messagesdk/entity/FileObserverBean;->path:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setFilters(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloudplay/messagesdk/entity/ObserverItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloudplay/messagesdk/entity/FileObserverBean;->filters:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setMask(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloudplay/messagesdk/entity/FileObserverBean;->mask:I

    .line 2
    .line 3
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloudplay/messagesdk/entity/FileObserverBean;->path:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
