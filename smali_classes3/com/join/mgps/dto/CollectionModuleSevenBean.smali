.class public Lcom/join/mgps/dto/CollectionModuleSevenBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private template_items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionModuleSevenSubBean;",
            ">;"
        }
    .end annotation
.end field

.field private template_type:I

.field private title:Ljava/lang/String;


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
.method public getTemplate_items()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionModuleSevenSubBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionModuleSevenBean;->template_items:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTemplate_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionModuleSevenBean;->template_type:I

    .line 2
    .line 3
    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionModuleSevenBean;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setTemplate_items(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "template_items"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionModuleSevenSubBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionModuleSevenBean;->template_items:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setTemplate_type(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "template_type"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CollectionModuleSevenBean;->template_type:I

    .line 2
    .line 3
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionModuleSevenBean;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
