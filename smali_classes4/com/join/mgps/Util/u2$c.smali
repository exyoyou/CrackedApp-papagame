.class Lcom/join/mgps/Util/u2$c;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/u2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/join/mgps/Util/u2;


# direct methods
.method constructor <init>(Lcom/join/mgps/Util/u2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$path",
            "val$sig",
            "val$appid",
            "val$bucket",
            "val$directory"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/u2$c;->g:Lcom/join/mgps/Util/u2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/Util/u2$c;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/Util/u2$c;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/mgps/Util/u2$c;->d:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/join/mgps/Util/u2$c;->e:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/join/mgps/Util/u2$c;->f:Ljava/lang/String;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/u2$c;->g:Lcom/join/mgps/Util/u2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/Util/u2$c;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/join/mgps/Util/u2$c;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/join/mgps/Util/u2$c;->d:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/join/mgps/Util/u2$c;->e:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/join/mgps/Util/u2$c;->f:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static/range {v0 .. v5}, Lcom/join/mgps/Util/u2;->c(Lcom/join/mgps/Util/u2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
