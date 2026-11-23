.class final Lcom/windmill/kuaishou/h$7;
.super Lcom/windmill/sdk/natives/WMImage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/kuaishou/h;->getVideoCoverImage()Lcom/windmill/sdk/natives/WMImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Z

.field final synthetic e:Lcom/windmill/kuaishou/h;


# direct methods
.method constructor <init>(Lcom/windmill/kuaishou/h;IILjava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/kuaishou/h$7;->e:Lcom/windmill/kuaishou/h;

    iput p2, p0, Lcom/windmill/kuaishou/h$7;->a:I

    iput p3, p0, Lcom/windmill/kuaishou/h$7;->b:I

    iput-object p4, p0, Lcom/windmill/kuaishou/h$7;->c:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/windmill/kuaishou/h$7;->d:Z

    invoke-direct {p0}, Lcom/windmill/sdk/natives/WMImage;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHeight()I
    .locals 1

    iget v0, p0, Lcom/windmill/kuaishou/h$7;->a:I

    return v0
.end method

.method public final getImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/windmill/kuaishou/h$7;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getWidth()I
    .locals 1

    iget v0, p0, Lcom/windmill/kuaishou/h$7;->b:I

    return v0
.end method

.method public final isValid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/windmill/kuaishou/h$7;->d:Z

    return v0
.end method
