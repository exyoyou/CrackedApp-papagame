.class Lcom/join/mgps/adapter/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/e;->l(Lcom/join/mgps/adapter/e$n;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/adapter/e$i0;

.field final synthetic c:Lcom/join/mgps/adapter/e;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/e;Lcom/join/mgps/adapter/e$i0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$viewBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/e$a;->c:Lcom/join/mgps/adapter/e;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/e$a;->b:Lcom/join/mgps/adapter/e$i0;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/e$a;->c:Lcom/join/mgps/adapter/e;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/e$a;->b:Lcom/join/mgps/adapter/e$i0;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/join/mgps/dto/BannerBean;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/join/mgps/adapter/e;->j(Lcom/join/mgps/dto/BannerBean;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/adapter/e$a;->c:Lcom/join/mgps/adapter/e;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/join/mgps/adapter/e;->a(Lcom/join/mgps/adapter/e;)Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object p1, p0, Lcom/join/mgps/adapter/e$a;->c:Lcom/join/mgps/adapter/e;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/join/mgps/adapter/e;->a(Lcom/join/mgps/adapter/e;)Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object p1, p0, Lcom/join/mgps/adapter/e$a;->b:Lcom/join/mgps/adapter/e$i0;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lcom/join/mgps/dto/BannerBean;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/join/mgps/dto/BannerBean;->getCrc_link_type_val()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const-string v3, "todayButton"

    .line 51
    .line 52
    iget-object p1, p0, Lcom/join/mgps/adapter/e$a;->b:Lcom/join/mgps/adapter/e$i0;

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/join/mgps/adapter/e$i0;->e()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    const-string v5, "\u7cbe\u9009\u4e13\u9898"

    .line 59
    .line 60
    invoke-virtual/range {v0 .. v5}, Lcom/papa/sim/statistic/t;->l2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method
