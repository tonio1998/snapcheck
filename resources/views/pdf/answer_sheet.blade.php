<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Answer Sheet</title>
    <style>
        @page {
            size: A5;
            margin: 12mm;
            margin-left: 10mm;
            margin-bottom: 8mm;
        }

        body {
            font-family: sans-serif;
            font-size: 10px;
            margin: 0;
            padding: 0;
            position: relative;
        }

        .info-table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 8px;
        }

        .bubble {
            width: 15px;
            height: 15px;
            border: 1px solid #000;
            border-radius: 50%;
            display: inline-block;
            margin: auto;
        }

        .bubble-cell {
            padding: 3px;
            text-align: center;
        }

        .question-number {
            width: 15px;
            text-align: right;
            padding-right: 2px;
        }

        .column-table {
            width: 100%;
            border-collapse: collapse;
        }

        .choice-header th {
            text-align: center;
            width: 15px;
        }

        .bubbles-table {
            border-collapse: collapse;
        }

        td {
            vertical-align: top;
        }

        /* Markers */
        .marker {
            width: 15px;
            height: 15px;
            background: black;
            position: fixed;
        }

        .top-left    { top: -25px; left: -10px; }
        .top-right   { top: -25px; right: -25px; }
        .bottom-left { bottom: -10px; left: -10px; }
        .bottom-right{ bottom: -10px; right: -25px; }

        .watermark {
    writing-mode: vertical-rl;
    transform: rotate(180deg);
    font-size: 12px;
    color: rgba(0, 0, 0, 0.3);
    font-weight: bold;
    text-align: left;
    padding-left: 2px;
    margin-top: 20px; /* push it after the content */
}



        .instructions {
            position: absolute;
            top: 50%;
            left: 0;
            transform: rotate(-90deg) translateX(-50%);
            transform-origin: left center;
            font-size: 11px;
            color: rgba(0, 0, 0, 0.6);
            position: fixed;
        }
    
        .watermark2 {
            position: fixed;
            transform: translateX(70px) translateY(-20px);
            width: 100%;
            color: #000;
        }


    </style>
</head>
<body>

<!-- Corner markers for scanner -->
<div class="marker top-left"></div>
<div class="marker top-right"></div>
<div class="marker bottom-left"></div>
<div class="marker bottom-right"></div>
<div class="instructions">
    <strong>Instructions:</strong> 
    Shade the circle that corresponds to your answer using a black or dark pencil. Erase cleanly if you 
    need to change your answer. Do not fold or crumple this sheet.

    <h3 class="watermark2">Answer Sheet</h3>
</div>
<!-- Vertical watermark -->
<div style="padding: 20px;">
    <!-- Instructions -->
    <!-- Student Info -->
    <table class="info-table">
        <tr>
            <td><strong>Name:</strong> ____________________</td>
            <td><strong>Class:</strong> ____________________</td>
            <td><strong>Quiz:</strong> ____________________</td>
        </tr>
    </table>

    @php
        $questionsPerColumn = 13;
        $totalColumns = ceil($totalItems / $questionsPerColumn);
        $columnsPerRow = 4;
    @endphp

    <!-- Bubbles -->
    <table class="bubbles-table">
        @for ($rowGroup = 0; $rowGroup < ceil($totalColumns / $columnsPerRow); $rowGroup++)
            <tr>
                @for ($col = 0; $col < $columnsPerRow; $col++)
                    @php $currentColumn = $rowGroup * $columnsPerRow + $col; @endphp
                    @if ($currentColumn < $totalColumns)
                        <td style="padding: 2px 6px; margin-bottom: 10px; margin-top: 10px">
                            <table class="column-table">
                                <thead>
                                    <tr class="choice-header">
                                        <th></th>
                                        @foreach (['A','B','C','D'] as $choice)
                                            <th>{{ $choice }}</th>
                                        @endforeach
                                    </tr>
                                </thead>
                                <tbody>
                                    @for ($q = 1; $q <= $questionsPerColumn; $q++)
                                        @php $questionNumber = $currentColumn * $questionsPerColumn + $q; @endphp
                                        @if ($questionNumber <= $totalItems)
                                            <tr>
                                                <td class="question-number">{{ $questionNumber }}</td>
                                                @foreach (['A','B','C','D'] as $choice)
                                                    <td class="bubble-cell">
                                                        <div class="bubble"></div>
                                                    </td>
                                                @endforeach
                                            </tr>
                                        @endif
                                    @endfor
                                </tbody>
                            </table>
                        </td>
                    @endif
                @endfor
            </tr>
        @endfor
    </table>
</div>

</body>
</html>
