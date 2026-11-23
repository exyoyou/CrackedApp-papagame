.class public final Lcom/beizi/ad/model/g$c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/ad/model/g$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/beizi/ad/model/i$d;

.field private b:Lcom/beizi/ad/model/i$c;

.field private c:Lcom/beizi/ad/model/g$b;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcom/beizi/ad/model/g$b;)Lcom/beizi/ad/model/g$c$a;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/beizi/ad/model/g$c$a;->c:Lcom/beizi/ad/model/g$b;

    return-object p0
.end method

.method public a(Lcom/beizi/ad/model/i$c;)Lcom/beizi/ad/model/g$c$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/beizi/ad/model/g$c$a;->b:Lcom/beizi/ad/model/i$c;

    return-object p0
.end method

.method public a(Lcom/beizi/ad/model/i$d;)Lcom/beizi/ad/model/g$c$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/model/g$c$a;->a:Lcom/beizi/ad/model/i$d;

    return-object p0
.end method

.method public a(Z)Lcom/beizi/ad/model/g$c$a;
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/beizi/ad/model/g$c$a;->d:Z

    return-object p0
.end method

.method public a()Lcom/beizi/ad/model/g$c;
    .locals 2

    .line 5
    new-instance v0, Lcom/beizi/ad/model/g$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/beizi/ad/model/g$c;-><init>(Lcom/beizi/ad/model/g$1;)V

    .line 6
    iget-object v1, p0, Lcom/beizi/ad/model/g$c$a;->c:Lcom/beizi/ad/model/g$b;

    invoke-static {v0, v1}, Lcom/beizi/ad/model/g$c;->a(Lcom/beizi/ad/model/g$c;Lcom/beizi/ad/model/g$b;)Lcom/beizi/ad/model/g$b;

    .line 7
    iget-object v1, p0, Lcom/beizi/ad/model/g$c$a;->a:Lcom/beizi/ad/model/i$d;

    invoke-static {v0, v1}, Lcom/beizi/ad/model/g$c;->a(Lcom/beizi/ad/model/g$c;Lcom/beizi/ad/model/i$d;)Lcom/beizi/ad/model/i$d;

    .line 8
    iget-object v1, p0, Lcom/beizi/ad/model/g$c$a;->b:Lcom/beizi/ad/model/i$c;

    invoke-static {v0, v1}, Lcom/beizi/ad/model/g$c;->a(Lcom/beizi/ad/model/g$c;Lcom/beizi/ad/model/i$c;)Lcom/beizi/ad/model/i$c;

    .line 9
    iget-boolean v1, p0, Lcom/beizi/ad/model/g$c$a;->d:Z

    invoke-static {v0, v1}, Lcom/beizi/ad/model/g$c;->a(Lcom/beizi/ad/model/g$c;Z)Z

    return-object v0
.end method
