.class final Lcom/aggmoread/sdk/z/a/m/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/a/v/a$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/a/m/l;->a(Landroid/view/View;Lcom/aggmoread/sdk/z/a/g/c;Lcom/aggmoread/sdk/z/a/g/c$a$b;Lcom/aggmoread/sdk/z/a/g/d;Lcom/aggmoread/sdk/z/a/i/h;Lcom/aggmoread/sdk/z/a/u/c$a;Lcom/aggmoread/sdk/z/a/m/l$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:Lcom/aggmoread/sdk/z/a/m/l$d;

.field final synthetic c:Lcom/aggmoread/sdk/z/a/g/c;

.field final synthetic d:Lcom/aggmoread/sdk/z/a/g/c$a$b;

.field final synthetic e:Lcom/aggmoread/sdk/z/a/g/d;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/a/m/l$d;Lcom/aggmoread/sdk/z/a/g/c;Lcom/aggmoread/sdk/z/a/g/c$a$b;Lcom/aggmoread/sdk/z/a/g/d;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/m/l$a;->b:Lcom/aggmoread/sdk/z/a/m/l$d;

    iput-object p2, p0, Lcom/aggmoread/sdk/z/a/m/l$a;->c:Lcom/aggmoread/sdk/z/a/g/c;

    iput-object p3, p0, Lcom/aggmoread/sdk/z/a/m/l$a;->d:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    iput-object p4, p0, Lcom/aggmoread/sdk/z/a/m/l$a;->e:Lcom/aggmoread/sdk/z/a/g/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/aggmoread/sdk/z/a/m/l$a;->a:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aggmoread/sdk/z/a/m/l$a;->a:Z

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/m/l$a;->c:Lcom/aggmoread/sdk/z/a/g/c;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/m/l$a;->d:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/m/l$a;->e:Lcom/aggmoread/sdk/z/a/g/d;

    iget-object v3, p0, Lcom/aggmoread/sdk/z/a/m/l$a;->b:Lcom/aggmoread/sdk/z/a/m/l$d;

    invoke-static {v0, v1, v2, v3}, Lcom/aggmoread/sdk/z/a/m/l;->a(Lcom/aggmoread/sdk/z/a/g/c;Lcom/aggmoread/sdk/z/a/g/c$a$b;Lcom/aggmoread/sdk/z/a/g/d;Lcom/aggmoread/sdk/z/a/m/l$d;)V

    return-void
.end method

.method public onDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/m/l$a;->b:Lcom/aggmoread/sdk/z/a/m/l$d;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/aggmoread/sdk/z/a/m/l$a;->a:Z

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/a/m/l$d;->c()V

    :cond_0
    return-void
.end method

.method public onRenderSuccess()V
    .locals 0

    return-void
.end method
