.class public final Lcom/zxing/android/view/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/zxing/ResultPointCallback;


# instance fields
.field private final a:Lcom/zxing/android/view/ViewfinderView;


# direct methods
.method public constructor <init>(Lcom/zxing/android/view/ViewfinderView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewfinderView"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/zxing/android/view/a;->a:Lcom/zxing/android/view/ViewfinderView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "point"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/zxing/android/view/a;->a:Lcom/zxing/android/view/ViewfinderView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/zxing/android/view/ViewfinderView;->a(Lcom/google/zxing/ResultPoint;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
