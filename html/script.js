function loadProcesses() {
  $.getJSON("/data/processes.json", function (data) {
    let rows = "";
    data.forEach((proc) => {
      rows += `<tr>
            <td>${proc.pid}</td>
            <td>${proc.name}</td>
            <td>${proc.cpu.toFixed(2)}</td>
            <td>${proc.memory.toFixed(2)}</td>
          </tr>`;
    });
    $("#process-list").html(rows);
  });
}

setInterval(loadProcesses, 15000);
$(document).ready(loadProcesses);
