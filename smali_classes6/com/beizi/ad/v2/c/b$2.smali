.class Lcom/beizi/ad/v2/c/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/ad/v2/c/b;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/beizi/ad/v2/c/b;


# direct methods
.method constructor <init>(Lcom/beizi/ad/v2/c/b;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/v2/c/b$2;->b:Lcom/beizi/ad/v2/c/b;

    .line 2
    .line 3
    iput p2, p0, Lcom/beizi/ad/v2/c/b$2;->a:I

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
    iget-object v0, p0, Lcom/beizi/ad/v2/c/b$2;->b:Lcom/beizi/ad/v2/c/b;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/ad/v2/c/b;->a(Lcom/beizi/ad/v2/c/b;)Lcom/beizi/ad/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/beizi/ad/v2/c/b$2;->a:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/beizi/ad/a;->a(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
