.class final Lcom/aggmoread/sdk/z/a/m/l$b;
.super Lcom/aggmoread/sdk/z/a/s/h$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/a/m/l;->b(Lcom/aggmoread/sdk/z/a/g/c;Lcom/aggmoread/sdk/z/a/g/c$a$b;Lcom/aggmoread/sdk/z/a/g/d;Lcom/aggmoread/sdk/z/a/m/l$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/a/g/d;

.field final synthetic b:Lcom/aggmoread/sdk/z/a/g/c;

.field final synthetic c:Lcom/aggmoread/sdk/z/a/g/c$a$b;

.field final synthetic d:Lcom/aggmoread/sdk/z/a/m/l$d;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/a/g/d;Lcom/aggmoread/sdk/z/a/g/c;Lcom/aggmoread/sdk/z/a/g/c$a$b;Lcom/aggmoread/sdk/z/a/m/l$d;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/m/l$b;->a:Lcom/aggmoread/sdk/z/a/g/d;

    iput-object p2, p0, Lcom/aggmoread/sdk/z/a/m/l$b;->b:Lcom/aggmoread/sdk/z/a/g/c;

    iput-object p3, p0, Lcom/aggmoread/sdk/z/a/m/l$b;->c:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    iput-object p4, p0, Lcom/aggmoread/sdk/z/a/m/l$b;->d:Lcom/aggmoread/sdk/z/a/m/l$d;

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/s/h$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/aggmoread/sdk/z/a/s/h$b;)V
    .locals 3

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/s/h$b;->a()Z

    move-result v0

    const-string v1, "JHAPIHTAG"

    if-eqz v0, :cond_0

    const-string p1, "ClickUrlRequestJuHeApi onResult enter, empty"

    invoke-static {v1, p1}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClickUrlRequestJuHeApi onResult enter, clickUrlResponse = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/m/l$b;->a:Lcom/aggmoread/sdk/z/a/g/d;

    iget-object v1, p1, Lcom/aggmoread/sdk/z/a/s/h$b;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/aggmoread/sdk/z/a/g/d;->i:Ljava/lang/String;

    iget-object p1, p1, Lcom/aggmoread/sdk/z/a/s/h$b;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/m/l$b;->b:Lcom/aggmoread/sdk/z/a/g/c;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/m/l$b;->c:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    invoke-static {p1, v1, v2, v0}, Lcom/aggmoread/sdk/z/a/m/l;->a(Ljava/lang/String;Lcom/aggmoread/sdk/z/a/g/c;Lcom/aggmoread/sdk/z/a/g/c$a$b;Lcom/aggmoread/sdk/z/a/g/d;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/m/l$b;->d:Lcom/aggmoread/sdk/z/a/m/l$d;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/aggmoread/sdk/z/a/m/l$d;->a()V

    :cond_1
    return-void
.end method
