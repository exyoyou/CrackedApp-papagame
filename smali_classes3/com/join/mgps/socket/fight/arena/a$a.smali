.class Lcom/join/mgps/socket/fight/arena/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/socket/fight/arena/a;->s([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:[Ljava/lang/Object;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/join/mgps/socket/fight/arena/a;


# direct methods
.method constructor <init>(Lcom/join/mgps/socket/fight/arena/a;[Ljava/lang/Object;ILjava/lang/String;)V
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
            "val$params",
            "val$shareType",
            "val$shareContent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a;->e:Lcom/join/mgps/socket/fight/arena/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/socket/fight/arena/a$a;->b:[Ljava/lang/Object;

    .line 4
    .line 5
    iput p3, p0, Lcom/join/mgps/socket/fight/arena/a$a;->c:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/mgps/socket/fight/arena/a$a;->d:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    const-string p1, ""

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a;->b:[Ljava/lang/Object;

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    aget-object v0, v0, v1

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :try_start_1
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/a$a;->b:[Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v2, 0x3

    .line 15
    aget-object v1, v1, v2

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-object v0, p1

    .line 23
    :catch_1
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/a$a;->e:Lcom/join/mgps/socket/fight/arena/a;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/join/mgps/socket/fight/arena/a;->b(Lcom/join/mgps/socket/fight/arena/a;)Landroid/app/Activity;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object v2, p0, Lcom/join/mgps/socket/fight/arena/a$a;->e:Lcom/join/mgps/socket/fight/arena/a;

    .line 34
    .line 35
    invoke-static {v2}, Lcom/join/mgps/socket/fight/arena/a;->b(Lcom/join/mgps/socket/fight/arena/a;)Landroid/app/Activity;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v1, v2, v0, p1}, Lcom/papa/sim/statistic/t;->m1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a;->e:Lcom/join/mgps/socket/fight/arena/a;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/join/mgps/socket/fight/arena/a;->a(Lcom/join/mgps/socket/fight/arena/a;)Lcom/join/mgps/socket/fight/arena/a$y;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget v0, p0, Lcom/join/mgps/socket/fight/arena/a$a;->c:I

    .line 57
    .line 58
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/a$a;->d:Ljava/lang/String;

    .line 59
    .line 60
    invoke-interface {p1, v0, v1}, Lcom/join/mgps/socket/fight/arena/a$y;->onShare(ILjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a;->e:Lcom/join/mgps/socket/fight/arena/a;

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/join/mgps/socket/fight/arena/a;->w()V

    .line 66
    .line 67
    .line 68
    return-void
.end method
