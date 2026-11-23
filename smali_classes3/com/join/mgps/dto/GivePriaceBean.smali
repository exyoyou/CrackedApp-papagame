.class public Lcom/join/mgps/dto/GivePriaceBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/GivePriaceBean$MessagesBean;
    }
.end annotation


# instance fields
.field private code:Ljava/lang/String;

.field private flag:Ljava/lang/String;

.field private messages:Lcom/join/mgps/dto/GivePriaceBean$MessagesBean;

.field private version:Ljava/lang/String;


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
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GivePriaceBean;->code:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFlag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GivePriaceBean;->flag:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMessages()Lcom/join/mgps/dto/GivePriaceBean$MessagesBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GivePriaceBean;->messages:Lcom/join/mgps/dto/GivePriaceBean$MessagesBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GivePriaceBean;->version:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GivePriaceBean;->code:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFlag(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flag"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GivePriaceBean;->flag:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setMessages(Lcom/join/mgps/dto/GivePriaceBean$MessagesBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messages"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GivePriaceBean;->messages:Lcom/join/mgps/dto/GivePriaceBean$MessagesBean;

    .line 2
    .line 3
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GivePriaceBean;->version:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
