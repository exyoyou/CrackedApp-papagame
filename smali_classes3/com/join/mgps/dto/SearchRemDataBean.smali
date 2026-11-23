.class public Lcom/join/mgps/dto/SearchRemDataBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private color:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private key_word:Ljava/lang/String;


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
.method public getColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchRemDataBean;->color:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchRemDataBean;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getKey_word()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchRemDataBean;->key_word:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchRemDataBean;->color:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchRemDataBean;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setKey_word(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key_word"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchRemDataBean;->key_word:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
