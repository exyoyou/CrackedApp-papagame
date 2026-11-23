.class public Lcom/join/mgps/dto/CommitMessageMainBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private data:Lcom/join/mgps/dto/CommitContextDataBean;

.field private modeltype:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/join/mgps/dto/CommitContextDataBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "modeltype",
            "data"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/CommitMessageMainBean;->modeltype:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/CommitMessageMainBean;->data:Lcom/join/mgps/dto/CommitContextDataBean;

    return-void
.end method


# virtual methods
.method public getData()Lcom/join/mgps/dto/CommitContextDataBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommitMessageMainBean;->data:Lcom/join/mgps/dto/CommitContextDataBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getModeltype()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommitMessageMainBean;->modeltype:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setData(Lcom/join/mgps/dto/CommitContextDataBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommitMessageMainBean;->data:Lcom/join/mgps/dto/CommitContextDataBean;

    .line 2
    .line 3
    return-void
.end method

.method public setModeltype(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modeltype"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommitMessageMainBean;->modeltype:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
