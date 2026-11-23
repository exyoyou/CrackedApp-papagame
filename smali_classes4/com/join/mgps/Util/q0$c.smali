.class Lcom/join/mgps/Util/q0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/Util/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/Util/q0;


# direct methods
.method private constructor <init>(Lcom/join/mgps/Util/q0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/q0$c;->b:Lcom/join/mgps/Util/q0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/join/mgps/Util/q0;Lcom/join/mgps/Util/q0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/Util/q0$c;-><init>(Lcom/join/mgps/Util/q0;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/q0$c;->b:Lcom/join/mgps/Util/q0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/q0;->d(Lcom/join/mgps/Util/q0;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/Util/q0$c;->b:Lcom/join/mgps/Util/q0;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/Util/q0;->e(Lcom/join/mgps/Util/q0;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/Util/q0$c;->b:Lcom/join/mgps/Util/q0;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/join/mgps/Util/q0;->f(Lcom/join/mgps/Util/q0;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    return-void
.end method
