.class final Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final finderPattern:Lcom/google/zxing/oned/rss/FinderPattern;

.field private final leftChar:Lcom/google/zxing/oned/rss/DataCharacter;

.field private final mayBeLast:Z

.field private final rightChar:Lcom/google/zxing/oned/rss/DataCharacter;


# direct methods
.method constructor <init>(Lcom/google/zxing/oned/rss/DataCharacter;Lcom/google/zxing/oned/rss/DataCharacter;Lcom/google/zxing/oned/rss/FinderPattern;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->leftChar:Lcom/google/zxing/oned/rss/DataCharacter;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->rightChar:Lcom/google/zxing/oned/rss/DataCharacter;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->finderPattern:Lcom/google/zxing/oned/rss/FinderPattern;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->mayBeLast:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->finderPattern:Lcom/google/zxing/oned/rss/FinderPattern;

    .line 2
    .line 3
    return-object v0
.end method

.method getLeftChar()Lcom/google/zxing/oned/rss/DataCharacter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->leftChar:Lcom/google/zxing/oned/rss/DataCharacter;

    .line 2
    .line 3
    return-object v0
.end method

.method getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->rightChar:Lcom/google/zxing/oned/rss/DataCharacter;

    .line 2
    .line 3
    return-object v0
.end method

.method mayBeLast()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->mayBeLast:Z

    .line 2
    .line 3
    return v0
.end method

.method public mustBeLast()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->rightChar:Lcom/google/zxing/oned/rss/DataCharacter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method
