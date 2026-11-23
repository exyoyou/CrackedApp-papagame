.class Lcom/join/mgps/Util/w0$a;
.super Lm6/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/w0;->q(Landroid/content/Context;Lcom/join/mgps/hmcloud/HMCloudGameManager$f;Lcom/join/mgps/dto/ExtBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/join/mgps/dto/ExtBean;

.field final synthetic d:Lcom/join/mgps/Util/w0;


# direct methods
.method constructor <init>(Lcom/join/mgps/Util/w0;Lcom/join/mgps/hmcloud/HMCloudGameManager$f;Landroid/content/Context;Lcom/join/mgps/dto/ExtBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$cloudParams",
            "val$context",
            "val$extBean"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/w0$a;->d:Lcom/join/mgps/Util/w0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/Util/w0$a;->a:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/Util/w0$a;->b:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/mgps/Util/w0$a;->c:Lcom/join/mgps/dto/ExtBean;

    .line 8
    .line 9
    invoke-direct {p0}, Lm6/e;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lm6/e;->a(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/join/mgps/Util/w0$a;->a:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 12
    .line 13
    iget-wide v0, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->a:J

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->K(J)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/join/mgps/Util/w0$a;->d:Lcom/join/mgps/Util/w0;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/Util/w0$a;->b:Landroid/content/Context;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/join/mgps/Util/w0$a;->a:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/join/mgps/Util/w0$a;->c:Lcom/join/mgps/dto/ExtBean;

    .line 25
    .line 26
    invoke-static {p1, v0, v1, v2}, Lcom/join/mgps/Util/w0;->a(Lcom/join/mgps/Util/w0;Landroid/content/Context;Lcom/join/mgps/hmcloud/HMCloudGameManager$f;Lcom/join/mgps/dto/ExtBean;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
