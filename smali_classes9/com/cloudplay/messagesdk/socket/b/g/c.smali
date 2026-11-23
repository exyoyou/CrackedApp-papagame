.class public Lcom/cloudplay/messagesdk/socket/b/g/c;
.super Lcom/cloudplay/messagesdk/socket/b/g/g;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:[Ljava/lang/String;

.field public f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloudplay/messagesdk/socket/b/g/g;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/g/c;->a:Ljava/lang/String;

    .line 5
    .line 6
    const-string p1, "/"

    .line 7
    .line 8
    iput-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/g/c;->b:Ljava/lang/String;

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/g/c;->d:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/g/c;->e:[Ljava/lang/String;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/g/c;->f:Ljava/util/Map;

    .line 16
    .line 17
    return-void
.end method
