.class public Lcom/join/mgps/dto/FoundGameTabBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private tips_info:Lcom/join/mgps/dto/TipsInfoBean;

.field private title_info:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TabItemBean;",
            ">;"
        }
    .end annotation
.end field


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


# virtual methods
.method public getTips_info()Lcom/join/mgps/dto/TipsInfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FoundGameTabBean;->tips_info:Lcom/join/mgps/dto/TipsInfoBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTitle_info()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TabItemBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FoundGameTabBean;->title_info:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public setTips_info(Lcom/join/mgps/dto/TipsInfoBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tips_info"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FoundGameTabBean;->tips_info:Lcom/join/mgps/dto/TipsInfoBean;

    .line 2
    .line 3
    return-void
.end method

.method public setTitle_info(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title_info"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TabItemBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FoundGameTabBean;->title_info:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method
