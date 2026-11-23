.class Lcom/join/mgps/customview/AdapterView$g;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/AdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/AdapterView;


# direct methods
.method private constructor <init>(Lcom/join/mgps/customview/AdapterView;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/AdapterView$g;->b:Lcom/join/mgps/customview/AdapterView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/join/mgps/customview/AdapterView;Lcom/join/mgps/customview/AdapterView$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/AdapterView$g;-><init>(Lcom/join/mgps/customview/AdapterView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/AdapterView$g;->b:Lcom/join/mgps/customview/AdapterView;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/join/mgps/customview/AdapterView;->n:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {v0}, Lcom/join/mgps/customview/AdapterView;->c(Lcom/join/mgps/customview/AdapterView;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method
