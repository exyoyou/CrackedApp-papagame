.class Lcom/join/mgps/customview/n$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Landroid/view/ViewGroup;

.field b:I

.field c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "container",
            "position",
            "object"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/join/mgps/customview/n$a;->a:Landroid/view/ViewGroup;

    .line 5
    .line 6
    iput p2, p0, Lcom/join/mgps/customview/n$a;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/join/mgps/customview/n$a;->c:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method
