.class Lcom/join/android/app/common/utils/l$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/common/utils/l$a;->g(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic c:Lcom/join/android/app/common/utils/l$a;


# direct methods
.method constructor <init>(Lcom/join/android/app/common/utils/l$a;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$b2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/utils/l$a$a;->c:Lcom/join/android/app/common/utils/l$a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/android/app/common/utils/l$a$a;->b:Landroid/graphics/Bitmap;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/utils/l$a$a;->c:Lcom/join/android/app/common/utils/l$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/android/app/common/utils/l$a;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/android/app/common/utils/l$a$a;->b:Landroid/graphics/Bitmap;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/DraweeView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
