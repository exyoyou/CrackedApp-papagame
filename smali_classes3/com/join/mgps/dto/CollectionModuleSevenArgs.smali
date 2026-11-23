.class public Lcom/join/mgps/dto/CollectionModuleSevenArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private templateId:Ljava/lang/String;


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
.method public getTemplateId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionModuleSevenArgs;->templateId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setTemplateId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "templateId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionModuleSevenArgs;->templateId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
