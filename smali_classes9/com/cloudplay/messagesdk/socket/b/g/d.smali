.class public Lcom/cloudplay/messagesdk/socket/b/g/d;
.super Lcom/cloudplay/messagesdk/socket/b/g/g;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/cloudplay/messagesdk/socket/b/g/g;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/cloudplay/messagesdk/socket/b/g/d;->a:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/g/d;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/cloudplay/messagesdk/socket/b/g/g;-><init>()V

    .line 8
    iput p1, p0, Lcom/cloudplay/messagesdk/socket/b/g/d;->a:I

    .line 9
    iput-object p2, p0, Lcom/cloudplay/messagesdk/socket/b/g/d;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/cloudplay/messagesdk/socket/b/g/g;-><init>()V

    .line 5
    iput p1, p0, Lcom/cloudplay/messagesdk/socket/b/g/d;->a:I

    .line 6
    iput-boolean p2, p0, Lcom/cloudplay/messagesdk/socket/b/g/d;->c:Z

    return-void
.end method
