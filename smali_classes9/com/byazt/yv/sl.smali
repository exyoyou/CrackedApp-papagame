.class public Lcom/byazt/yv/sl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f3,
        0x9e
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/yv/sl$c;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final sp:Ljava/lang/String;

.field public final tt:[Ljava/lang/String;

.field public final uj:Ljava/lang/String;

.field public final ve:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/byazt/yv/sl$c;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/byazt/yv/sl$c;->c(Lcom/byazt/yv/sl$c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/yv/sl;->c:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/byazt/yv/sl$c;->tt(Lcom/byazt/yv/sl$c;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/yv/sl;->tt:[Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/byazt/yv/sl$c;->ve(Lcom/byazt/yv/sl$c;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/yv/sl;->ve:[Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/byazt/yv/sl$c;->uj(Lcom/byazt/yv/sl$c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/yv/sl;->uj:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lcom/byazt/yv/sl$c;->n(Lcom/byazt/yv/sl$c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/yv/sl;->n:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lcom/byazt/yv/sl$c;->a(Lcom/byazt/yv/sl$c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/yv/sl;->a:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lcom/byazt/yv/sl$c;->sp(Lcom/byazt/yv/sl$c;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/yv/sl;->sp:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byazt/yv/sl$c;Lcom/byazt/yv/sl$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/yv/sl;-><init>(Lcom/byazt/yv/sl$c;)V

    return-void
.end method

.method public static c(I)Lcom/byazt/yv/sl;
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/byazt/yv/t;->c(I)Lcom/byazt/yv/sl;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yv/sl;->c:Ljava/lang/String;

    return-object v0
.end method

.method public tt()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yv/sl;->tt:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public uj()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yv/sl;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yv/sl;->uj:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
