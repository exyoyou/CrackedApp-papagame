.class Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j$b;->c:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;

    iput-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j$b;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j$b;->c:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j$b;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->b(Landroid/app/Activity;)V

    return-void
.end method
