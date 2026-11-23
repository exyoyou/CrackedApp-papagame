.class Lcom/join/android/app/common/http/d$i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/common/http/d$i;->e(Landroid/widget/ImageView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:I

.field final synthetic d:Lcom/join/android/app/common/http/d$i;


# direct methods
.method constructor <init>(Lcom/join/android/app/common/http/d$i;Landroid/widget/ImageView;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$view",
            "val$errorResId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/http/d$i$b;->d:Lcom/join/android/app/common/http/d$i;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/android/app/common/http/d$i$b;->b:Landroid/widget/ImageView;

    .line 4
    .line 5
    iput p3, p0, Lcom/join/android/app/common/http/d$i$b;->c:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/http/d$i$b;->b:Landroid/widget/ImageView;

    .line 2
    .line 3
    iget v1, p0, Lcom/join/android/app/common/http/d$i$b;->c:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
