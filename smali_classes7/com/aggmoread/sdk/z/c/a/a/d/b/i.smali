.class public Lcom/aggmoread/sdk/z/c/a/a/d/b/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aggmoread/sdk/z/c/a/a/d/b/i$b;
    }
.end annotation


# static fields
.field public static f:Lcom/aggmoread/sdk/z/c/a/a/d/b/i;


# instance fields
.field private a:I

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/aggmoread/sdk/z/c/a/a/c/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/i$b;

    invoke-direct {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/i$b;-><init>()V

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/i$b;->a()Lcom/aggmoread/sdk/z/c/a/a/d/b/i;

    move-result-object v0

    sput-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/i;->f:Lcom/aggmoread/sdk/z/c/a/a/d/b/i;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/i;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/i;->b:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/i;->c:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/i$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/i;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/c/a/a/d/b/i;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/i;->a:I

    return p1
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/c/a/a/d/b/i;Lcom/aggmoread/sdk/z/c/a/a/c/k;)Lcom/aggmoread/sdk/z/c/a/a/c/k;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/i;->e:Lcom/aggmoread/sdk/z/c/a/a/c/k;

    return-object p1
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/c/a/a/d/b/i;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/i;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/c/a/a/d/b/i;Z)Z
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/i;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/aggmoread/sdk/z/c/a/a/d/b/i;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/i;->d:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/i;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/i;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/aggmoread/sdk/z/c/a/a/c/k;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/i;->e:Lcom/aggmoread/sdk/z/c/a/a/c/k;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/i;->b:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SDKInitConfig{agreePrivacy=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/i;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "useTextureView=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/i;->b:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "privacyController=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/i;->e:Lcom/aggmoread/sdk/z/c/a/a/c/k;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "oaid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "authorities=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/i;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
