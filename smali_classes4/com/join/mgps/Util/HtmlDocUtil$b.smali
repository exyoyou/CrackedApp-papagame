.class public Lcom/join/mgps/Util/HtmlDocUtil$b;
.super Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/Util/HtmlDocUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imgUrl",
            "imgUrlLarge"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/Util/HtmlDocUtil$b;->c:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/Util/HtmlDocUtil$b;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/HtmlDocUtil$b;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/HtmlDocUtil$b;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imgUrl"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/HtmlDocUtil$b;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imgUrlLarge"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/HtmlDocUtil$b;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
