.class public final Lcom/beizi/ad/model/a$b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/ad/model/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/beizi/ad/model/i$h;

.field private c:Lcom/beizi/ad/model/i$g;

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:J

.field private i:J

.field private j:Lcom/beizi/ad/model/g$a;

.field private k:Lcom/beizi/ad/model/g$c;

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/beizi/ad/model/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/beizi/ad/model/a$b$a;->l:Ljava/util/ArrayList;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a(J)Lcom/beizi/ad/model/a$b$a;
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/beizi/ad/model/a$b$a;->d:J

    return-object p0
.end method

.method public a(Lcom/beizi/ad/model/g$a;)Lcom/beizi/ad/model/a$b$a;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/beizi/ad/model/a$b$a;->j:Lcom/beizi/ad/model/g$a;

    return-object p0
.end method

.method public a(Lcom/beizi/ad/model/g$c;)Lcom/beizi/ad/model/a$b$a;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/beizi/ad/model/a$b$a;->k:Lcom/beizi/ad/model/g$c;

    return-object p0
.end method

.method public a(Lcom/beizi/ad/model/i$g;)Lcom/beizi/ad/model/a$b$a;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/beizi/ad/model/a$b$a;->c:Lcom/beizi/ad/model/i$g;

    return-object p0
.end method

.method public a(Lcom/beizi/ad/model/i$h;)Lcom/beizi/ad/model/a$b$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/beizi/ad/model/a$b$a;->b:Lcom/beizi/ad/model/i$h;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/beizi/ad/model/a$b$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/model/a$b$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/beizi/ad/model/a$b$a;
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/beizi/ad/model/a$b$a;->m:Z

    return-object p0
.end method

.method public a()Lcom/beizi/ad/model/a$b;
    .locals 3

    .line 8
    new-instance v0, Lcom/beizi/ad/model/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/beizi/ad/model/a$b;-><init>(Lcom/beizi/ad/model/a$1;)V

    .line 9
    iget-object v1, p0, Lcom/beizi/ad/model/a$b$a;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/ad/model/a$b;->a(Lcom/beizi/ad/model/a$b;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    iget-object v1, p0, Lcom/beizi/ad/model/a$b$a;->j:Lcom/beizi/ad/model/g$a;

    invoke-static {v0, v1}, Lcom/beizi/ad/model/a$b;->a(Lcom/beizi/ad/model/a$b;Lcom/beizi/ad/model/g$a;)Lcom/beizi/ad/model/g$a;

    .line 11
    iget-object v1, p0, Lcom/beizi/ad/model/a$b$a;->c:Lcom/beizi/ad/model/i$g;

    invoke-static {v0, v1}, Lcom/beizi/ad/model/a$b;->a(Lcom/beizi/ad/model/a$b;Lcom/beizi/ad/model/i$g;)Lcom/beizi/ad/model/i$g;

    .line 12
    iget-wide v1, p0, Lcom/beizi/ad/model/a$b$a;->h:J

    invoke-static {v0, v1, v2}, Lcom/beizi/ad/model/a$b;->a(Lcom/beizi/ad/model/a$b;J)J

    .line 13
    iget-object v1, p0, Lcom/beizi/ad/model/a$b$a;->b:Lcom/beizi/ad/model/i$h;

    invoke-static {v0, v1}, Lcom/beizi/ad/model/a$b;->a(Lcom/beizi/ad/model/a$b;Lcom/beizi/ad/model/i$h;)Lcom/beizi/ad/model/i$h;

    .line 14
    iget-wide v1, p0, Lcom/beizi/ad/model/a$b$a;->d:J

    invoke-static {v0, v1, v2}, Lcom/beizi/ad/model/a$b;->b(Lcom/beizi/ad/model/a$b;J)J

    .line 15
    iget-object v1, p0, Lcom/beizi/ad/model/a$b$a;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/ad/model/a$b;->b(Lcom/beizi/ad/model/a$b;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    iget-wide v1, p0, Lcom/beizi/ad/model/a$b$a;->i:J

    invoke-static {v0, v1, v2}, Lcom/beizi/ad/model/a$b;->c(Lcom/beizi/ad/model/a$b;J)J

    .line 17
    iget-object v1, p0, Lcom/beizi/ad/model/a$b$a;->k:Lcom/beizi/ad/model/g$c;

    invoke-static {v0, v1}, Lcom/beizi/ad/model/a$b;->a(Lcom/beizi/ad/model/a$b;Lcom/beizi/ad/model/g$c;)Lcom/beizi/ad/model/g$c;

    .line 18
    iget-object v1, p0, Lcom/beizi/ad/model/a$b$a;->l:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/beizi/ad/model/a$b;->a(Lcom/beizi/ad/model/a$b;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 19
    iget-object v1, p0, Lcom/beizi/ad/model/a$b$a;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/ad/model/a$b;->c(Lcom/beizi/ad/model/a$b;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    iget-object v1, p0, Lcom/beizi/ad/model/a$b$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/ad/model/a$b;->d(Lcom/beizi/ad/model/a$b;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    iget-boolean v1, p0, Lcom/beizi/ad/model/a$b$a;->m:Z

    invoke-static {v0, v1}, Lcom/beizi/ad/model/a$b;->a(Lcom/beizi/ad/model/a$b;Z)Z

    return-object v0
.end method

.method public a(Lcom/beizi/ad/model/a$a;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/beizi/ad/model/a$b$a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(J)Lcom/beizi/ad/model/a$b$a;
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/beizi/ad/model/a$b$a;->h:J

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/beizi/ad/model/a$b$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/model/a$b$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public c(J)Lcom/beizi/ad/model/a$b$a;
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/beizi/ad/model/a$b$a;->i:J

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/beizi/ad/model/a$b$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/model/a$b$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/beizi/ad/model/a$b$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/model/a$b$a;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
