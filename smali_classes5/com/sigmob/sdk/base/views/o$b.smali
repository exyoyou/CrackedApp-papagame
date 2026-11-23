.class public Lcom/sigmob/sdk/base/views/o$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/views/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:I = 0x2

.field public static final b:I = 0x4

.field public static final c:I = -0x1

.field public static final d:I = 0x80

.field public static final e:Landroid/graphics/Paint$Style;

.field public static final f:I

.field public static final g:I = 0xff

.field public static final h:Landroid/graphics/Paint$Style;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    sput-object v0, Lcom/sigmob/sdk/base/views/o$b;->e:Landroid/graphics/Paint$Style;

    sget v0, Lcom/sigmob/sdk/base/views/o;->a:I

    sput v0, Lcom/sigmob/sdk/base/views/o$b;->f:I

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    sput-object v0, Lcom/sigmob/sdk/base/views/o$b;->h:Landroid/graphics/Paint$Style;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
