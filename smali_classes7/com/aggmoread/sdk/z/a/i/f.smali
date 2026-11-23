.class public final Lcom/aggmoread/sdk/z/a/i/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/aggmoread/sdk/z/a/i/f;

.field public static final c:Lcom/aggmoread/sdk/z/a/i/f;

.field public static final d:Lcom/aggmoread/sdk/z/a/i/f;

.field public static final e:Lcom/aggmoread/sdk/z/a/i/f;

.field public static final f:Lcom/aggmoread/sdk/z/a/i/f;

.field public static final g:Lcom/aggmoread/sdk/z/a/i/f;

.field public static final h:Lcom/aggmoread/sdk/z/a/i/f;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/aggmoread/sdk/z/a/i/f;

    const/4 v1, 0x2

    const-string v2, "splash"

    invoke-direct {v0, v1, v2}, Lcom/aggmoread/sdk/z/a/i/f;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/aggmoread/sdk/z/a/i/f;->b:Lcom/aggmoread/sdk/z/a/i/f;

    new-instance v0, Lcom/aggmoread/sdk/z/a/i/f;

    const/4 v1, 0x4

    const-string v2, "informationFlow"

    invoke-direct {v0, v1, v2}, Lcom/aggmoread/sdk/z/a/i/f;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/aggmoread/sdk/z/a/i/f;->c:Lcom/aggmoread/sdk/z/a/i/f;

    new-instance v0, Lcom/aggmoread/sdk/z/a/i/f;

    const/4 v1, 0x7

    const-string v2, "express_informationFlow"

    invoke-direct {v0, v1, v2}, Lcom/aggmoread/sdk/z/a/i/f;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/aggmoread/sdk/z/a/i/f;->d:Lcom/aggmoread/sdk/z/a/i/f;

    new-instance v0, Lcom/aggmoread/sdk/z/a/i/f;

    const/4 v1, 0x1

    const-string v2, "banner"

    invoke-direct {v0, v1, v2}, Lcom/aggmoread/sdk/z/a/i/f;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/aggmoread/sdk/z/a/i/f;->e:Lcom/aggmoread/sdk/z/a/i/f;

    new-instance v0, Lcom/aggmoread/sdk/z/a/i/f;

    const/4 v1, 0x3

    const-string v2, "interstitial"

    invoke-direct {v0, v1, v2}, Lcom/aggmoread/sdk/z/a/i/f;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/aggmoread/sdk/z/a/i/f;->f:Lcom/aggmoread/sdk/z/a/i/f;

    new-instance v0, Lcom/aggmoread/sdk/z/a/i/f;

    const/4 v1, 0x5

    const-string v2, "reward_video"

    invoke-direct {v0, v1, v2}, Lcom/aggmoread/sdk/z/a/i/f;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/aggmoread/sdk/z/a/i/f;->g:Lcom/aggmoread/sdk/z/a/i/f;

    new-instance v0, Lcom/aggmoread/sdk/z/a/i/f;

    const/4 v1, -0x1

    const-string v2, "unknow"

    invoke-direct {v0, v1, v2}, Lcom/aggmoread/sdk/z/a/i/f;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/aggmoread/sdk/z/a/i/f;->h:Lcom/aggmoread/sdk/z/a/i/f;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/aggmoread/sdk/z/a/i/f;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/aggmoread/sdk/z/a/i/f;->a:I

    return v0
.end method
