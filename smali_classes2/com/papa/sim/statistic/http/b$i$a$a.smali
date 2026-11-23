.class Lcom/papa/sim/statistic/http/b$i$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/http/b$i$a;->b(Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic c:Lcom/papa/sim/statistic/http/b$i$a;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/http/b$i$a;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/http/b$i$a$a;->c:Lcom/papa/sim/statistic/http/b$i$a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/papa/sim/statistic/http/b$i$a$a;->b:Landroid/graphics/Bitmap;

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
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b$i$a$a;->c:Lcom/papa/sim/statistic/http/b$i$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/papa/sim/statistic/http/b$i$a;->a:Landroid/widget/ImageView;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/papa/sim/statistic/http/b$i$a$a;->b:Landroid/graphics/Bitmap;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
