.class public Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/MessageRedPointBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessagesBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;


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
.method public getData()Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean;->data:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public setData(Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;)V
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
    iput-object p1, p0, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean;->data:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 2
    .line 3
    return-void
.end method
