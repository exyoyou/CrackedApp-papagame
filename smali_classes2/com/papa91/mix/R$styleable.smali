.class public final Lcom/papa91/mix/R$styleable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/mix/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AVLoadingIndicatorView:[I

.field public static final AVLoadingIndicatorView_indicatorColor:I = 0x0

.field public static final AVLoadingIndicatorView_indicatorName:I = 0x1

.field public static final AVLoadingIndicatorView_maxHeight:I = 0x2

.field public static final AVLoadingIndicatorView_maxWidth:I = 0x3

.field public static final AVLoadingIndicatorView_minHeight:I = 0x4

.field public static final AVLoadingIndicatorView_minWidth:I = 0x5

.field public static final LeanTextView:[I

.field public static final LeanTextView_degree:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/papa91/mix/R$styleable;->AVLoadingIndicatorView:[I

    const v0, 0x7f0401ba

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/papa91/mix/R$styleable;->LeanTextView:[I

    return-void

    :array_0
    .array-data 4
        0x7f040345
        0x7f040349
        0x7f040510
        0x7f040517
        0x7f04051f
        0x7f040525
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
